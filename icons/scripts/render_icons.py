import bpy
from math import radians

blendPath = bpy.path.abspath("//")
modelPath = blendPath + "models/"
materialPath = blendPath + "materials/"

def appendObject(object = "", type = "", blendFile = ""):
    
    directory = blendFile + type

    bpy.ops.wm.append(
        filepath=directory + object, 
        filename=object,
        directory=directory)

if not bpy.data.node_groups.get("PM Shader"):
    appendObject("PM Shader", "\\NodeTree\\", blendPath +"pmshader.blend")

def importObjects(files = []):

    for file in files:
        bpy.ops.import_scene.smd(filepath=modelPath + file + ".smd", append="NEW_ARMATURE")
        
        vObject = bpy.context.active_object.children[0]
        
        bpy.context.view_layer.objects.active = vObject
        
        for modifier in vObject.modifiers:
            bpy.ops.object.modifier_apply(modifier=modifier.name)
        
        objs = bpy.data.objects
        objs.remove(objs[vObject.parent.name], do_unlink=True)
        
        vObject.active_material.use_nodes = True

objectsList = ["pellets/pellet_catcher_reference"]
importObjects(objectsList)