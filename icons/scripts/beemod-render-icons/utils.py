import bpy
import os.path
from math import radians
import mathutils

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
    bpy.context.view_layer.objects.active = None

def selectObject(object):
    deselectAll()
    bpy.context.view_layer.objects.active = object
    object.select_set(True)
    
def importSourceModel(path):
    name = os.path.basename(path)
    folder = os.path.dirname(path)
    
    bpy.ops.import_scene.smd(filepath=path, append="NEW_ARMATURE")
    
    object = bpy.context.active_object.children[0]
    
    selectObject(object)
    
    # Apply Armature Modifier
    for modifier in object.modifiers:
        bpy.ops.object.modifier_apply(modifier=modifier.name)
    
    # Remove Armature
    objs = bpy.data.objects
    objs.remove(objs[object.parent.name], do_unlink=True)
    bpy.data.meshes.remove(bpy.data.meshes["smd_bone_vis"])
    
    # Materials
    for material_slot in vObject.material_slots:
        
        material = material_slot.material
        
        # Get image for material
        image = os.path.join(folder, material.name + ".tga")
        bpy.ops.image.open(filepath=img)
        
        nodesMatModel(material, image)