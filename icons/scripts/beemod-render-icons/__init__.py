bl_info = {
	"name": "BEEmod Render Icons",
	"author": "Konclan",
	"version": (1, 0, 0),
	"blender": (2, 93, 0),
	"category": "Render",
	"location": "Scene properties",
	"description": "BEEmod item icon rendering tool",
    "warning": "",
    "doc_url": "",
    "tracker_url": "",
}        

import bpy
import os.path

import importlib

from . import renderer, gui, nodes, utils

for module in [renderer, gui, nodes, utils]:
    importlib.reload(module)

class BRI_SceneProps(bpy.types.PropertyGroup):
    """Group of properties representing an item in the list."""
    
    output_dir: bpy.props.StringProperty(
        name="Render Directory",
        description="Directory renders are saved to",
        default="",
        subtype='DIR_PATH')

class BRI_Imports(bpy.types.PropertyGroup):
    name: bpy.props.StringProperty(
        name="File",
        description="A name for this file",
        default="Untitled")
    
    path: bpy.props.StringProperty(
        name="Path",
        description="Path of this file reletive to this blend file",
        default="Untitled")

    position_options = [
        ("FLOOR", "Floor", "Item is on the floor"),
        ("WALL", "Wall", "Item is on the wall"),
    ]
    
    position: bpy.props.EnumProperty(
        name="Position",
        items=position_options,
        description="Position of the model in PeTI",
        default="FLOOR",)

def menu_func(self, context):
    self.layout.operator(renderer.BEERenderIcons.bl_idname)

_classes = (
    BRI_SceneProps,
    BRI_Imports,
    renderer.BEERenderIcons,
    gui.BRI_GUI_FL_UL_ImportList,
    gui.BRI_GUI_FL_OT_NewItem,
    gui.BRI_GUI_FL_OT_DeleteItem,
    gui.BRI_GUI_FL_OT_MoveItem,
    gui.BRI_GUI_PT,
)

def register():
    for cls in _classes:
        bpy.utils.register_class(cls)
    
    bpy.types.Scene.bri_imports = bpy.props.CollectionProperty(type = BRI_Imports)
    bpy.types.Scene.bri_imports_index = bpy.props.IntProperty(name = "BRI Import Index",default = 0)
    
    bpy.types.VIEW3D_MT_object.append(menu_func)  # Adds the new operator to an existing menu.
    
    def make_pointer(prop_type):
        return bpy.props.PointerProperty(name="BEE Render Icon Settings",type=prop_type)
    
    bpy.types.Scene.bri = make_pointer(BRI_SceneProps)

def unregister():
    for cls in _classes:
        bpy.utils.unregister_class(cls)
        
    bpy.types.VIEW3D_MT_object.remove(menu_func)
    
    #del bpy.types.Scene.bri_options
    del bpy.types.Scene.bri_imports
    del bpy.types.Scene.bri_imports_index
    
    del bpy.types.Scene.bri

if __name__ == "__main__":
    register()