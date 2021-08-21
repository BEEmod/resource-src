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

from . import gui, render, utils, nodes

class BRI_Model(PropertyGroup):
    """Group of properties representing an item in the list."""
    
    type_options = [
        ("FLOOR", "Floor", "Item is on the floor"),
        ("WALL", "Wall", "Item is on the wall"),
    ]

    name: StringProperty(
        name="File",
        description="A name for this file",
        default="Untitled")
    
    path: StringProperty(
        name="Path",
        description="Path of this file reletive to this blend file",
        default="Untitled")

    position: EnumProperty(
        name="Position",
        items=type_options,
        description="Position of the model in PeTI",
        default="FLOOR",)

class BEERenderIcons(bpy.types.Operator):
    """Render models and export icons"""
    bl_idname = "bee_ri.render"
    bl_label = "BEE Render Icons"
    #bl_options = {''}
    
    def execute():
        scene = context.scene
        
        return {'FINISHED'}
    
def menu_func(self, context):
    self.layout.operator(BEERenderIcons.bl_idname)

def register():
    
    bpy.utils.register_class(BRI_Model)
    
    bpy.types.Scene.bri_model = CollectionProperty(type = BRI_Model)
    bpy.types.Scene.bri_model_index = IntProperty(name = "BRI Model Index",default = 0)
    
    bpy.utils.register_class(BEERenderIcons)
    bpy.types.VIEW3D_MT_object.append(menu_func)  # Adds the new operator to an existing menu.
    
    # UI Stuff
    bpy.utils.register_class(BRI_GUI_FL_UL_List)
    bpy.utils.register_class(BRI_GUI_FL_OT_NewItem)
    bpy.utils.register_class(BRI_GUI_FL_OT_DeleteItem)
    bpy.utils.register_class(BRI_GUI_FL_OT_MoveItem)
    bpy.utils.register_class(BRI_GUI_PT)


def unregister():
    
    bpy.utils.unregister_class(BRI_Model)
    
    del bpy.types.Scene.bri_model
    del bpy.types.Scene.bri_model_index
    
    bpy.utils.unregister_class(BEERenderIcons)
    
    # UI Stuff
    bpy.utils.unregister_class(BRI_GUI_FL_UL_List)
    bpy.utils.unregister_class(BRI_GUI_FL_OT_NewItem)
    bpy.utils.unregister_class(BRI_GUI_FL_OT_DeleteItem)
    bpy.utils.unregister_class(BRI_GUI_FL_OT_MoveItem)
    bpy.utils.unregister_class(BRI_GUI_PT)

if __name__ == "__main__":
    register()