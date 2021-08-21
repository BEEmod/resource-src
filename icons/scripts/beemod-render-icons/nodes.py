def cleanMatNodes(material)
    material.use_nodes = True
    
    for node in compTree.nodes:
        compTree.nodes.remove(node)
        
def nodesPMShader()
    #if not bpy.data.node_groups.get("PM Shader"):
    
    # ToDo: Convert this to scripted node group
    appendObject("PM Shader", "\\NodeTree\\", blendPath +"pmshader.blend")
    nodeGroupPmShader = bpy.data.node_groups["PM Shader"]
    nodeGroupPmShaderImg = getNodesByType(nodeGroupPmShader, "TEX_IMAGE")[0].image
    nodeGroupPmShaderImg.use_fake_user = True

def nodeShadowCatcher()
    #if not bpy.data.node_groups.get("ShadowCatcher"):

    # ToDo: Convert this to scripted node group
    appendObject("ShadowCatcher", "\\NodeTree\\", blendPath +"pmshader.blend")

def nodesMatModel(material)
    cleanMatNodes(material)
    
    if not bpy.data.node_groups.get("PM Shader"):
        nodesPMShader()
    
    texture = bpy.ops.texture.new()
    
    nodeOutput = material.node_tree.nodes["Material Output"]
    
    nodeTexImage = material.node_tree.nodes.new("ShaderNodeTexImage")
    nodeTexImage.image = bpy.data.images[material.name + ".tga"]
    
    nodePMShader = material.node_tree.nodes.new("ShaderNodeGroup")
    nodePMShader.node_tree = bpy.data.node_groups['PM Shader']

    # Connect our nodes
    material.node_tree.links.new(nodeTexImage.outputs[0], nodePmShader.inputs[0])
    material.node_tree.links.new(nodeTexImage.outputs[1], nodePmShader.inputs[1])
    
    material.node_tree.links.new(nodePmShader.outputs[0], nodeMatOutput.inputs[0])