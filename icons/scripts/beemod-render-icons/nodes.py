import bpy

from . import utils

def nodesCleanMat(material):
    material.use_nodes = True
    
    for node in material.node_tree.nodes:
        material.node_tree.nodes.remove(node)
        
def nodesPMShader():
    #if not bpy.data.node_groups.get("PM Shader"):
    
    # ToDo: Convert this to scripted node group
    #utils.appendObject("PM Shader", "\\NodeTree\\", bpy.path.abspath("//noderef.blend"))
    
    nodeGroup = bpy.data.node_groups.new('PmShader', 'ShaderNodeTree')

    nodeInputs = nodeGroup.nodes.new('NodeGroupInput')
    nodeOutputs = nodeGroup.nodes.new('NodeGroupOutput')

    nodeEmission1 = nodeGroup.nodes.new('ShaderNodeEmission')
    nodeShaderRGB1 = nodeGroup.nodes.new('ShaderNodeShaderToRGB')

    nodeBsdfPrincipled = nodeGroup.nodes.new('ShaderNodeBsdfPrincipled')

    nodeShaderRGB2 = nodeGroup.nodes.new('ShaderNodeShaderToRGB')
    nodeSeparateHSV = nodeGroup.nodes.new('ShaderNodeSeparateHSV')
    nodeCombineXYZ = nodeGroup.nodes.new('ShaderNodeCombineXYZ')
    nodeColorRamp = nodeGroup.nodes.new('ShaderNodeValToRGB')
    nodeColorRamp.color_ramp.elements.new(0.25)
    nodeColorRamp.color_ramp.elements.new(0.375)
    nodeColorRamp.color_ramp.elements.new(0.5)
    nodeColorRamp.color_ramp.elements.new(0.625)
    nodeColorRamp.color_ramp.elements.new(0.75)
    nodeColorRamp.color_ramp.elements[0].color = (0.0512695, 0.0578054, 0.0595113, 1)
    nodeColorRamp.color_ramp.elements[1].color = (0.0512695, 0.0578054, 0.0595113, 1)
    nodeColorRamp.color_ramp.elements[2].color = (0.114435, 0.116971, 0.111932, 1)
    nodeColorRamp.color_ramp.elements[3].color = (0.283094, 0.286361, 0.287214, 1)
    nodeColorRamp.color_ramp.elements[4].color = (0.473532, 0.473532, 0.428691, 1)
    nodeColorRamp.color_ramp.elements[5].color = (0.508881, 0.508882, 0.514918, 1)
    nodeColorRamp.color_ramp.elements[6].color = (0.395988, 0.397621, 0.401066, 1)

    nodeMultiplyRGB = nodeGroup.nodes.new('ShaderNodeMixRGB')
    nodeMultiplyRGB.blend_type = "MULTIPLY"
    nodeEmission2 = nodeGroup.nodes.new('ShaderNodeEmission')
    nodeEmission2.inputs[1].default_value = 18
    nodeShaderRGB3 = nodeGroup.nodes.new('ShaderNodeShaderToRGB')

    nodeMixRGB = nodeGroup.nodes.new('ShaderNodeMixRGB')

    # Connections

    nodeGroup.links.new(nodeInputs.outputs[0], nodeEmission1.inputs[0])
    nodeGroup.links.new(nodeInputs.outputs[1], nodeEmission1.inputs[1])
    nodeGroup.links.new(nodeEmission1.outputs[0], nodeShaderRGB1.inputs[0])
    nodeGroup.links.new(nodeShaderRGB1.outputs[0], nodeMixRGB.inputs[1])
    nodeGroup.links.new(nodeInputs.outputs[0], nodeBsdfPrincipled.inputs[0])
    nodeGroup.links.new(nodeBsdfPrincipled.outputs[0], nodeShaderRGB2.inputs[0])
    nodeGroup.links.new(nodeShaderRGB2.outputs[0], nodeMultiplyRGB.inputs[1])
    nodeGroup.links.new(nodeBsdfPrincipled.outputs[0], nodeShaderRGB2.inputs[0])
    nodeGroup.links.new(nodeShaderRGB2.outputs[0], nodeSeparateHSV.inputs[0])
    nodeGroup.links.new(nodeSeparateHSV.outputs[2], nodeCombineXYZ.inputs[0])
    nodeGroup.links.new(nodeCombineXYZ.outputs[0], nodeColorRamp.inputs[0])
    nodeGroup.links.new(nodeColorRamp.outputs[0], nodeMultiplyRGB.inputs[2])
    nodeGroup.links.new(nodeMultiplyRGB.outputs[0], nodeEmission2.inputs[0])
    nodeGroup.links.new(nodeEmission2.outputs[0], nodeShaderRGB3.inputs[0])
    nodeGroup.links.new(nodeShaderRGB3.outputs[0], nodeMixRGB.inputs[2])
    nodeGroup.links.new(nodeMixRGB.outputs[0], nodeOutputs.inputs[0])

def nodesShadowCatcher():
    #if not bpy.data.node_groups.get("ShadowCatcher"):

    # ToDo: Convert this to scripted node group
    #utils.appendObject("ShadowCatcher", "\\NodeTree\\", bpy.path.abspath("//noderef.blend"))

    nodeGroup = bpy.data.node_groups.new('ShadowCatcher', 'ShaderNodeTree')

    nodeOutputs = nodeGroup.nodes.new('NodeGroupOutput')

    nodeBsdfDiffuse1 = nodeGroup.nodes.new('ShaderNodeBsdfDiffuse')
    nodeBsdfDiffuse2 = nodeGroup.nodes.new('ShaderNodeBsdfDiffuse')
    nodeBsdfDiffuse2.inputs[0].default_value = (0.417885, 0.434154, 0.434154, 1)
    nodeBsdTransparent = nodeGroup.nodes.new('ShaderNodeBsdfTransparent')

    nodeShaderRGB = nodeGroup.nodes.new('ShaderNodeShaderToRGB')

    nodeColorRamp = nodeGroup.nodes.new('ShaderNodeValToRGB')
    nodeColorRamp.color_ramp.elements[1].position = 0.1
    nodeColorRamp.color_ramp.elements[0].color = (1, 1, 1, 1)
    nodeColorRamp.color_ramp.elements[1].color = (0, 0, 0, 1)

    nodeMixShader = nodeGroup.nodes.new('ShaderNodeMixShader')

    nodeGroup.links.new(nodeBsdfDiffuse1.outputs[0], nodeShaderRGB.inputs[0])
    nodeGroup.links.new(nodeShaderRGB.outputs[0], nodeColorRamp.inputs[0])
    nodeGroup.links.new(nodeColorRamp.outputs[0], nodeMixShader.inputs[0])
    nodeGroup.links.new(nodeBsdTransparent.outputs[0], nodeMixShader.inputs[1])
    nodeGroup.links.new(nodeBsdfDiffuse2.outputs[0], nodeMixShader.inputs[2])
    nodeGroup.links.new(nodeMixShader.outputs[0], nodeOutputs.inputs[0])

def nodesMatModel(material, image):

    nodesCleanMat(material)
    
    # Check for Node Group
    if not bpy.data.node_groups.get("PmShader"):
        nodesPMShader()
        
    print(material.name)

    # Create nodes
    nodeOutput = material.node_tree.nodes.new("ShaderNodeOutputMaterial")
    nodeTexImage = material.node_tree.nodes.new("ShaderNodeTexImage")
    nodeTexImage.image = bpy.data.images[image]
    nodeShader = material.node_tree.nodes.new("ShaderNodeGroup")
    nodeShader.node_tree = bpy.data.node_groups['PmShader']

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