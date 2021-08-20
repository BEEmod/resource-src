import bpy
import os.path
from math import radians
import mathutils

blendPath = bpy.path.abspath("//")
modelPath = blendPath + "models/"
materialPath = blendPath + "materials/"
renderPath = blendPath + "renders/"

floorObjectsList = ["pellets/pellet_launcher_reference"]
wallObjectsList = []

# Cleanup our file of garbage
def cleanUpBlend():
    # only worry about data in the startup scene
    for bpy_data_iter in (
            bpy.data.materials,
            bpy.data.meshes,
            bpy.data.cameras,
            bpy.data.collections,
            bpy.data.images,
            bpy.data.textures,
    ):
        for id_data in bpy_data_iter:
            try:
                if not id_data.use_fake_user == True:
                    bpy_data_iter.remove(id_data)
            except:
                bpy_data_iter.remove(id_data)

def appendObject(object, type, blendFile):
    
    directory = blendFile + type

    bpy.ops.wm.append(
        filepath=directory + object, 
        filename=object,
        directory=directory)

def getNodesByType(node_tree, type):
    foundNodes = []
    for node in node_tree.nodes:
        #print(node.type)
        if node.type == type:
            foundNodes.append(node)
            
    return foundNodes

def deselectAll():
    for obj in bpy.data.objects:
        obj.select_set(False)

def importObjects(file):
    
    mdlpth = os.path.join(modelPath, file + ".smd")

    bpy.ops.import_scene.smd(filepath=mdlpth, append="NEW_ARMATURE")
    
    vObject = bpy.context.active_object.children[0]
    
    bpy.context.view_layer.objects.active = vObject
    
    # Apply Armature Modifier
    for modifier in vObject.modifiers:
        bpy.ops.object.modifier_apply(modifier=modifier.name)
    
    # Move our object
    #bpy.ops.object.origin_set(type='ORIGIN_CENTER_OF_VOLUME', center='MEDIAN')
    #vObject.location = (0.0, 0.0, 0.0)
    
    # Material
    for material_slot in vObject.material_slots:
        
        material = material_slot.material
        
        # Get image for material
        imgpth = os.path.dirname(os.path.join(materialPath, file))
        img = os.path.join(imgpth, material.name + ".tga")
        bpy.ops.image.open(filepath=img)
        
        material.use_nodes = True
        material.node_tree.nodes.remove(material.node_tree.nodes["Principled BSDF"])
        
        texture = bpy.ops.texture.new()
        
        nodeMatOutput = material.node_tree.nodes["Material Output"]
        
        nodeTexImage = material.node_tree.nodes.new("ShaderNodeTexImage")
        nodeTexImage.image = bpy.data.images[material.name + ".tga"]
        
        nodePmShader = material.node_tree.nodes.new("ShaderNodeGroup")
        nodePmShader.node_tree = bpy.data.node_groups['PM Shader']
                
        # Connect our nodes
        material.node_tree.links.new(nodeTexImage.outputs[0], nodePmShader.inputs[0])
        material.node_tree.links.new(nodeTexImage.outputs[1], nodePmShader.inputs[1])
        
        material.node_tree.links.new(nodePmShader.outputs[0], nodeMatOutput.inputs[0])
    
    # Cleanup

    # Remove Armature
    objs = bpy.data.objects
    objs.remove(objs[vObject.parent.name], do_unlink=True)
    bpy.data.meshes.remove(bpy.data.meshes["smd_bone_vis"])

def createOutlineObject(object):
    deselectAll()
    bpy.context.view_layer.objects.active = object
    
    outlineObject = object.copy()
    outlineObject.data = object.data.copy()
    outlineObject.name = object.name + "_outline"
    outlineObject.data.materials.clear()
    
    bpy.context.scene.collection.objects.link(outlineObject)
    
    #Outline Material
    outlineMat = bpy.data.materials.new(name="Outline")
    outlineMat.use_nodes = True
    outlineMat.use_backface_culling = True
    outlineMat.node_tree.nodes.remove(outlineMat.node_tree.nodes["Principled BSDF"])
    outputNode = outlineMat.node_tree.nodes["Material Output"]
    colorNode = outlineMat.node_tree.nodes.new("ShaderNodeRGB")
    colorNode.outputs[0].default_value = (0.212231, 0.205079, 0.205079, 1)
    outlineMat.node_tree.links.new(colorNode.outputs[0], outputNode.inputs[0])

    outlineMat.diffuse_color = (0, 0, 0, 1)
    outlineMat.shadow_method = 'NONE'
    
    deselectAll()

    bpy.context.view_layer.objects.active = outlineObject

    outlineObject.data.materials.append(outlineMat)

    bpy.ops.object.editmode_toggle()
    bpy.ops.mesh.select_all(action='SELECT')
    
    bpy.ops.mesh.flip_normals()
    bpy.ops.transform.shrink_fatten(value=-1)
    
    bpy.ops.object.mode_set()
    
    return outlineObject

def createShadowObject(object):
    deselectAll()
    bpy.context.view_layer.objects.active = object
    # Place plane for shadows
    bpy.ops.mesh.primitive_plane_add(size=1000, enter_editmode=False, align='WORLD', location=(0, 0, -64.5), scale=(1, 1, 1))
    shadowPlane = bpy.context.active_object

    # Give plane Shadow Catcher material
    shadowMat = bpy.data.materials.new(name="ShadowCatcher")
    shadowMat.use_nodes = True
    shadowMat.blend_method = 'BLEND'
    
    shadowMat.node_tree.nodes.remove(shadowMat.node_tree.nodes["Principled BSDF"])
    nodeShadowOutput = shadowMat.node_tree.nodes["Material Output"]
    nodeShadowCatcher = shadowMat.node_tree.nodes.new("ShaderNodeGroup")
    nodeShadowCatcher.node_tree = bpy.data.node_groups['ShadowCatcher']
    shadowMat.node_tree.links.new(nodeShadowCatcher.outputs[0], nodeShadowOutput.inputs[0])
    
    shadowPlane.data.materials.append(shadowMat)
    
    shadowObject = object.copy()
    shadowObject.data = object.data.copy()
    shadowObject.name = object.name + "_shadow"
    shadowObject.data.materials.clear()
    
    clearMat = bpy.data.materials.new(name="Clear")
    clearMat.use_nodes = True
    clearMat.blend_method = 'CLIP'
    
    clearMat.node_tree.nodes.remove(clearMat.node_tree.nodes["Principled BSDF"])
    nodeClearOutput = shadowMat.node_tree.nodes["Material Output"]
    nodeClearTrans = shadowMat.node_tree.nodes.new("ShaderNodeBsdfTransparent")
    nodeClearTrans.inputs[0].default_value = (1, 1, 1, 0)
    clearMat.node_tree.links.new(nodeClearTrans.outputs[0], nodeClearOutput.inputs[0])

    
    shadowObject.data.materials.append(clearMat)
    
    return shadowPlane, shadowObject

def renderFrames(file):
    
    # Settings
    bpy.context.scene.render.filepath = renderPath + file + ".tga"
    bpy.context.scene.render.resolution_x = 512
    bpy.context.scene.render.resolution_y = 512
    bpy.context.scene.render.image_settings.file_format='TARGA'
    bpy.context.scene.render.film_transparent = True
    bpy.context.scene.view_settings.view_transform = 'Standard'
    
    bpy.ops.render.render(write_still = True)

# Call Functions

def renderIcons(file, type):
    renderFolder = os.path.dirname(os.path.join(renderPath, file))
    
    cleanUpBlend()
    
    importObjects(file)
    
    object = bpy.data.objects[os.path.basename(file)]
    scene = bpy.context.scene
    
    # Create extra objects for rendering
    outlineObject = createOutlineObject(object)
    shadowPlane, shadowObject = createShadowObject(object)
    
    deselectAll()
    # WHY IS THIS NOT SELECTING
    bpy.context.view_layer.objects.active = object
    
    camera_data = bpy.data.cameras.new("Camera")
    camera = bpy.data.objects.new("Camera", camera_data)

    # Place cameras
    if type == "FLOOR":
        camera.rotation_euler = ([radians(a) for a in (60.0, 0.0, 330.0)])
    elif type == "WALL":
        camera.rotation_euler = ([radians(a) for a in (330.0, 330.0, 180.0)])
        
    camera.data.type = "ORTHO"
    bpy.context.scene.camera = camera
    bpy.ops.view3d.camera_to_view_selected()
    
    camera.data.ortho_scale += 30
    
    # one blender unit in x-direction
    vec = mathutils.Vector((0.0, 0.0, max(object.dimensions) + 100.0))
    inv = camera.matrix_world.copy()
    inv.invert()
    # vec aligned to local axis in Blender 2.8+
    # in previous versions: vec_rot = vec * inv
    vec_rot = vec @ inv
    camera.location = camera.location + vec_rot
    
    # Collections
        
    # Move object to new collection and remove old
    collection = object.users_collection[0]
    
    tempCol = bpy.data.collections.new("Temp Collection")
    tempColOut = bpy.data.collections.new("Temp Collection Outline")
    tempColSdw = bpy.data.collections.new("Temp Collection Shadow")
    
    bpy.context.scene.collection.children.link(tempCol)
    bpy.context.scene.collection.children.link(tempColOut)
    bpy.context.scene.collection.children.link(tempColSdw)
    
    bpy.context.collection.objects.unlink(shadowPlane)
    bpy.context.scene.collection.objects.unlink(outlineObject)
    
    tempCol.objects.link(object)
    tempCol.objects.link(camera)
    tempColOut.objects.link(outlineObject)
    tempColSdw.objects.link(shadowPlane)
    tempColSdw.objects.link(shadowObject)
    
    bpy.data.collections.remove(collection)
    
    # RENDER!
    objectLayer = bpy.context.view_layer
    outlineLayer = bpy.context.scene.view_layers.new(name='Outline Layer')
    shadowLayer = bpy.context.scene.view_layers.new(name='Shadow Layer')
    
    bpy.context.layer_collection.children[tempColOut.name].exclude = True
    bpy.context.layer_collection.children[tempColSdw.name].exclude = True
    
    bpy.context.window.view_layer = outlineLayer
    
    bpy.context.layer_collection.children[tempCol.name].exclude = True
    bpy.context.layer_collection.children[tempColSdw.name].exclude = True

    bpy.context.window.view_layer = shadowLayer
    
    bpy.context.layer_collection.children[tempCol.name].exclude = True
    bpy.context.layer_collection.children[tempColOut.name].exclude = True
    
    bpy.context.window.view_layer = objectLayer

    # Compositing
    bpy.context.scene.use_nodes = True
    compTree = bpy.context.scene.node_tree
    
    for node in compTree.nodes:
        compTree.nodes.remove(node)
    
    comp_node = compTree.nodes.new('CompositorNodeComposite')
    
    layer_node_object = compTree.nodes.new("CompositorNodeRLayers")
    layer_node_object.layer = objectLayer.name
    layer_node_outline = compTree.nodes.new("CompositorNodeRLayers")
    layer_node_outline.layer = outlineLayer.name
    layer_node_shadow = compTree.nodes.new("CompositorNodeRLayers")
    layer_node_shadow.layer = shadowLayer.name
    
    comp_node_alphaOver1 = compTree.nodes.new("CompositorNodeAlphaOver")
    comp_node_alphaOver2 = compTree.nodes.new("CompositorNodeAlphaOver")
    
    compTree.links.new(layer_node_object.outputs[0], comp_node_alphaOver1.inputs[2])
    compTree.links.new(layer_node_outline.outputs[0], comp_node_alphaOver1.inputs[1])
    compTree.links.new(comp_node_alphaOver1.outputs[0], comp_node_alphaOver2.inputs[2])
    compTree.links.new(layer_node_shadow.outputs[0], comp_node_alphaOver2.inputs[1])
    compTree.links.new(comp_node_alphaOver2.outputs[0], comp_node.inputs[0])

    renderFrames(file)
    
    #bpy.context.scene.view_layers.remove(outlineLayer)
    #bpy.context.scene.view_layers.remove(shadowLayer)
    
    #cleanUpBlend()


cleanUpBlend()

if not bpy.data.node_groups.get("PM Shader"):
    appendObject("PM Shader", "\\NodeTree\\", blendPath +"pmshader.blend")
    nodeGroupPmShader = bpy.data.node_groups["PM Shader"]
    nodeGroupPmShaderImg = getNodesByType(nodeGroupPmShader, "TEX_IMAGE")[0].image
    nodeGroupPmShaderImg.use_fake_user = True
    
if not bpy.data.node_groups.get("ShadowCatcher"):
    appendObject("ShadowCatcher", "\\NodeTree\\", blendPath +"pmshader.blend")

for file in floorObjectsList:
    renderIcons(file, "FLOOR")
    
for file in wallObjectsList:
    renderIcons(file, "WALL")