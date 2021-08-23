import bpy
import os.path
from math import radians
import mathutils

from .nodes import *
from .utils import *

def createOutlineObject(object, thickness):
    
    # Copy model
    selectObject(object)
    outlineObject = object.copy()
    outlineObject.data = object.data.copy()
    outlineObject.name = object.name + "_outline"
    outlineObject.data.materials.clear()
    bpy.context.scene.collection.objects.link(outlineObject)
    
    #Outline Material
    outlineMat = bpy.data.materials.new(name="Outline")
    outlineMat.use_backface_culling = True
    outlineMat.diffuse_color = (0, 0, 0, 1)
    outlineMat.shadow_method = 'NONE'
    nodesMatOutline(outlineMat)
    outlineObject.data.materials.append(outlineMat)
    
    selectObject(outlineObject)
    bpy.ops.object.editmode_toggle()
    bpy.ops.mesh.select_all(action='SELECT')
    bpy.ops.mesh.flip_normals()
    bpy.ops.transform.shrink_fatten(value=-thickness)
    bpy.ops.object.mode_set()
    
    return outlineObject

def createShadowObject(object):
    selectObject(object)
    # Place plane for shadows
    bpy.ops.mesh.primitive_plane_add(size=1000, enter_editmode=False, align='WORLD', location=(0, 0, -64.5), scale=(1, 1, 1))
    shadowPlane = bpy.context.active_object

    # Give plane Shadow Catcher material
    shadowMat = bpy.data.materials.new(name="ShadowCatcher")
    shadowMat.use_nodes = True
    shadowMat.blend_method = 'BLEND'
    
    nodesMatShadow(shadowMat)
    
    shadowPlane.data.materials.append(shadowMat)
    
    shadowObject = object.copy()
    shadowObject.data = object.data.copy()
    shadowObject.name = object.name + "_shadow"
    shadowObject.data.materials.clear()
    
    clearMat = bpy.data.materials.new(name="Clear")
    clearMat.use_nodes = True
    clearMat.blend_method = 'CLIP'
    
    nodesMatClear(clearMat)
    
    shadowObject.data.materials.append(clearMat)
    
    return shadowPlane, shadowObject

def renderFrames(name):
    
    # Settings
    bpy.context.scene.render.filepath = bpy.context.scene.bri.output_dir + name + ".tga"
    bpy.context.scene.render.resolution_x = 512
    bpy.context.scene.render.resolution_y = 512
    bpy.context.scene.render.image_settings.file_format='TARGA'
    bpy.context.scene.render.film_transparent = True
    bpy.context.scene.view_settings.view_transform = 'Standard'
    
    bpy.ops.render.render(write_still = True)

# Call Functions

def renderIcon(pgroup):
    model = os.path.join(bpy.path.abspath("//") + pgroup.path, pgroup.name)
    
    if "smd" in os.path.splitext(model)[1]:
        object = importSourceModel(model)
    elif "obj" in os.path.splitext(model)[1]:
        object = importObj(model)
        object.rotation_euler = ([radians(a) for a in (0.0, 0.0, 90.0)])
    
    scene = bpy.context.scene
    type = pgroup.position
    
    # camera and object placement
    camera_data = bpy.data.cameras.new("Camera")
    camera = bpy.data.objects.new("Camera", camera_data)
    
    # Place cameras
    if type == "FLOOR":
        camera.rotation_euler = ([radians(a) for a in (60.0, 0.0, 330.0)])
    elif type == "WALL":
        camera.rotation_euler = ([radians(a) for a in (330.0, 330.0, 180.0)])
    elif type == "CEIL":
        camera.rotation_euler = ([radians(a) for a in (60.0, 0.0, 330.0)])
        object.rotation_euler[0] = radians(180)
    
    camera.data.type = "ORTHO"
    bpy.context.scene.camera = camera
    selectObject(object)
    bpy.ops.view3d.camera_to_view_selected()
    camera.data.ortho_scale += 30
    
    collection = object.users_collection[0]
    
    tempCol = bpy.data.collections.new("Temp Collection")
    bpy.context.scene.collection.children.link(tempCol)
    tempColOut = bpy.data.collections.new("Temp Collection Outline")
    bpy.context.scene.collection.children.link(tempColOut)
    tempColSdw = bpy.data.collections.new("Temp Collection Shadow")
    bpy.context.scene.collection.children.link(tempColSdw)
    
    tempCol.objects.link(object)
    tempCol.objects.link(camera)
    
    # Create extra objects for rendering
    outlineObject = createOutlineObject(object, pgroup.outline)
    bpy.context.scene.collection.objects.unlink(outlineObject)
    tempColOut.objects.link(outlineObject)
    
    if not type == "CEIL":
        shadowPlane, shadowObject = createShadowObject(object)
        bpy.context.collection.objects.unlink(shadowPlane)
        tempColSdw.objects.link(shadowPlane)
        tempColSdw.objects.link(shadowObject)
        
    # one blender unit in x-direction
    vec = mathutils.Vector((0.0, 0.0, max(object.dimensions) + 100.0))
    inv = camera.matrix_world.copy()
    inv.invert()
    # vec aligned to local axis in Blender 2.8+
    # in previous versions: vec_rot = vec * inv
    vec_rot = vec @ inv
    camera.location = camera.location + vec_rot
    
    bpy.data.collections.remove(collection)
    
    # RENDER!
    objectLayer = bpy.context.view_layer
    bpy.context.window.view_layer = bpy.context.view_layer
    for collection in bpy.context.layer_collection.children:
        if not collection.name == tempCol.name:
            collection.exclude = True
    
    outlineLayer = bpy.context.scene.view_layers.new(name='Outline Layer')
    bpy.context.window.view_layer = outlineLayer
    for collection in bpy.context.layer_collection.children:
        if not collection.name == tempColOut.name:
            collection.exclude = True
    
    shadowLayer = bpy.context.scene.view_layers.new(name='Shadow Layer')
    bpy.context.window.view_layer = shadowLayer
    for collection in bpy.context.layer_collection.children:
        if not collection.name == tempColSdw.name:
            collection.exclude = True
    
    bpy.context.window.view_layer = objectLayer

    # Compositing
    nodesCompositing(objectLayer, outlineLayer, shadowLayer)

    renderFrames(os.path.splitext(pgroup.name)[0])

class BEERenderIcons(bpy.types.Operator):
    """Render models and export icons"""
    bl_idname = "bri.render"
    bl_label = "BEE Render Icons"
    #bl_options = {''}
    
    @classmethod
    def poll(cls, context):
        return len(context.scene.bri_imports) > 0 and context.scene.bri.output_dir != ""
    
    def execute(self, context):
        scene = context.scene

        for pgroup in scene.bri_imports:
            cleanUpBlend()
            renderIcon(pgroup)
            
        #cleanUpBlend()
            
        
        return {'FINISHED'}