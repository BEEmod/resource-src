import bpy
from .utils import appendObject

def nodesCleanMat(material):
    material.use_nodes = True
    
    for node in compTree.nodes:
        compTree.nodes.remove(node)
        
def nodesPMShader():
    #if not bpy.data.node_groups.get("PM Shader"):
    
    # ToDo: Convert this to scripted node group
    appendObject("PM Shader", "\\NodeTree\\", blendPath +"noderef.blend")
    shader = bpy.data.node_groups["PM Shader"]
    image = getNodesByType(nodeGroupPmShader, "TEX_IMAGE")[0].image
    image.use_fake_user = True

def nodesShadowCatcher():
    #if not bpy.data.node_groups.get("ShadowCatcher"):

    # ToDo: Convert this to scripted node group
    appendObject("ShadowCatcher", "\\NodeTree\\", blendPath +"noderef.blend")

def nodesMatModel(material, image):

    nodesCleanMat(material)
    
    # Check for Node Group
    if not bpy.data.node_groups.get("PM Shader"):
        nodesPMShader()

    # Create nodes
    nodeOutput = material.node_tree.nodes["Material Output"]
    nodeTexImage = material.node_tree.nodes.new("ShaderNodeTexImage")
    nodeTexImage.image = bpy.data.images[image]
    nodeShader = material.node_tree.nodes.new("ShaderNodeGroup")
    nodeShader.node_tree = bpy.data.node_groups['PM Shader']

    # Connect our nodes
    material.node_tree.links.new(nodeTexImage.outputs[0], nodeShader.inputs[0])
    material.node_tree.links.new(nodeTexImage.outputs[1], nodeShader.inputs[1])
    material.node_tree.links.new(nodeShader.outputs[0], nodeOutput.inputs[0])
    
def nodesMatOutline(material):
    nodesCleanMat(material)
    
    # Create nodes
    nodeOutput = material.node_tree.nodes["Material Output"]
    nodeRGB = material.node_tree.nodes.new("ShaderNodeRGB")
    nodeRGB.outputs[0].default_value = (0.212231, 0.205079, 0.205079, 1)
    
    # Link nodes
    material.node_tree.links.new(nodeRGB.outputs[0], outputNode.inputs[0])
    
def nodesMatShadow(material):
    nodesCleanMat(material)
    
    # Check for Node Group
    if not bpy.data.node_groups.get("ShadowCatcher"):
        nodesShadowCatcher()
    
    # Create nodes
    nodeOutput = material.node_tree.nodes["Material Output"]
    nodeShader = material.node_tree.nodes.new("ShaderNodeGroup")
    nodeShader.node_tree = bpy.data.node_groups['ShadowCatcher']
    
    # Link nodes
    material.node_tree.links.new(nodeShader.outputs[0], nodeOutput.inputs[0])

def nodesMatClear(material):
    nodesCleanMat(material)
    
    # Create nodes
    nodeOutput = material.node_tree.nodes["Material Output"]
    nodeShader = material.node_tree.nodes.new("ShaderNodeBsdfTransparent")
    nodeShader.inputs[0].default_value = (1, 1, 1, 0)
    
    # Link nodes
    material.node_tree.links.new(nodeShader.outputs[0], nodeOutput.inputs[0])