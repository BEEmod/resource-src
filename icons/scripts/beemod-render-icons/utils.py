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