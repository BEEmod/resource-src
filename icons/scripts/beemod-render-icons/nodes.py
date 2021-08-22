import bpy

from . import utils

def nodesCleanMat(material):
    material.use_nodes = True
    
    for node in material.node_tree.nodes:
        material.node_tree.nodes.remove(node)
        
def nodesPMShader():
    #if not bpy.data.node_groups.get("PM Shader"):
    
    # ToDo: Convert this to scripted node group
    utils.appendObject("PM Shader", "\\NodeTree\\", bpy.path.abspath("//noderef.blend"))
    
def nodesShadowCatcher():
    #if not bpy.data.node_groups.get("ShadowCatcher"):

    # ToDo: Convert this to scripted node group
    utils.appendObject("ShadowCatcher", "\\NodeTree\\", bpy.path.abspath("//noderef.blend"))

def nodesMatModel(material, image):

    nodesCleanMat(material)
    
    # Check for Node Group
    if not bpy.data.node_groups.get("PM Shader"):
        nodesPMShader()
        
    print(material.name)

    # Create nodes
    nodeOutput = material.node_tree.nodes.new("ShaderNodeOutputMaterial")
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
    nodeOutput = material.node_tree.nodes.new("ShaderNodeOutputMaterial")
    nodeRGB = material.node_tree.nodes.new("ShaderNodeRGB")
    nodeRGB.outputs[0].default_value = (0.212231, 0.205079, 0.205079, 1)
    
    # Link nodes
    material.node_tree.links.new(nodeRGB.outputs[0], nodeOutput.inputs[0])
    
def nodesMatShadow(material):
    nodesCleanMat(material)
    
    # Check for Node Group
    if not bpy.data.node_groups.get("ShadowCatcher"):
        nodesShadowCatcher()
    
    # Create nodes
    nodeOutput = material.node_tree.nodes.new("ShaderNodeOutputMaterial")
    nodeShader = material.node_tree.nodes.new("ShaderNodeGroup")
    nodeShader.node_tree = bpy.data.node_groups['ShadowCatcher']
    
    # Link nodes
    material.node_tree.links.new(nodeShader.outputs[0], nodeOutput.inputs[0])

def nodesMatClear(material):
    nodesCleanMat(material)
    
    # Create nodes
    nodeOutput = material.node_tree.nodes.new("ShaderNodeOutputMaterial")
    nodeShader = material.node_tree.nodes.new("ShaderNodeBsdfTransparent")
    nodeShader.inputs[0].default_value = (1, 1, 1, 0)
    
    # Link nodes
    material.node_tree.links.new(nodeShader.outputs[0], nodeOutput.inputs[0])
    
def nodesCompositing(objectLayer, outlineLayer, shadowLayer, shadows = True):
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