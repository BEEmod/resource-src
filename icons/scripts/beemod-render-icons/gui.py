import bpy
import os
from bpy.props import StringProperty, EnumProperty, IntProperty, CollectionProperty
from bpy.types import PropertyGroup, UIList, Operator, Panel

class BRI_GUI_FL_UL_ImportList(UIList):
    """BRI_GUI Import List."""

    def draw_item(self, context, layout, data, item, icon, active_data,
                  active_propname, index):

        # We could write some code to decide which icon to use here...
        import_icon = 'FILE'
        position_icon = 'OUTLINER_OB_EMPTY'

        # Make sure your code supports all 3 layout types
        if self.layout_type in {'DEFAULT', 'COMPACT'}:
            layout.label(text=os.path.basename(item.name), icon = import_icon)
            layout.label(text=item.position, icon = position_icon)

        elif self.layout_type in {'GRID'}:
            layout.alignment = 'CENTER'
            layout.label(text="", icon = import_icon)


class BRI_GUI_FL_OT_NewItem(Operator):
    """Add a new file(s) to the list."""

    bl_idname = "bri_gui_fl.new_item"
    bl_label = "Add a new file"

    files: bpy.props.CollectionProperty(name="File Path",type=bpy.types.OperatorFileListElement,)
    directory: bpy.props.StringProperty(subtype='DIR_PATH',)
    
    filter_glob: StringProperty( default='*.smd;*.obj', options={'HIDDEN'} )

    filename_ext = ""

    def execute(self, context):
        directory = self.directory
        
        for file_elem in self.files:
            file = context.scene.bri_imports.add()
            file.name = file_elem.name
            file.path = os.path.relpath(directory, bpy.path.abspath("//"))
        return {'FINISHED'}

    def invoke(self, context, event):

        context.window_manager.fileselect_add(self) 
        
        return {'RUNNING_MODAL'}  
        # Tells Blender to hang on for the slow user input

        return{'FINISHED'}


class BRI_GUI_FL_OT_DeleteItem(Operator):
    """Remove the selected files from the list."""

    bl_idname = "bri_gui_fl.delete_item"
    bl_label = "Deletes an item"

    @classmethod
    def poll(cls, context):
        return context.scene.bri_imports

    def execute(self, context):
        filelist = context.scene.bri_imports
        index = context.scene.bri_imports_index

        filelist.remove(index)
        context.scene.bri_imports_index = min(max(0, index - 1), len(filelist) - 1)

        return{'FINISHED'}

class BRI_GUI_FL_OT_Clear(Operator):
    """Remove the selected files from the list."""

    bl_idname = "bri_gui_fl.clear"
    bl_label = "Removes all item"

    @classmethod
    def poll(cls, context):
        return context.scene.bri_imports

    def execute(self, context):        
        context.scene.bri_imports.clear()
        context.scene.bri_imports_index = 0

        return{'FINISHED'}


class BRI_GUI_FL_OT_MoveItem(Operator):
    """Move an item in the list."""

    bl_idname = "bri_gui_fl.move_item"
    bl_label = "Move an item in the list"

    direction: bpy.props.EnumProperty(items=(('UP', 'Up', ""),
                                              ('DOWN', 'Down', ""),))

    @classmethod
    def poll(cls, context):
        return context.scene.bri_imports

    def move_index(self):
        """ Move index of an item render queue while clamping it. """

        index = bpy.context.scene.bri_imports_index
        list_length = len(bpy.context.scene.bri_imports) - 1  # (index starts at 0)
        new_index = index + (-1 if self.direction == 'UP' else 1)

        bpy.context.scene.bri_imports_index = max(0, min(new_index, list_length))

    def execute(self, context):
        filelist = context.scene.bri_imports
        index = context.scene.bri_imports_index

        neighbor = index + (-1 if self.direction == 'UP' else 1)
        filelist.move(neighbor, index)
        self.move_index()

        return{'FINISHED'}


class BRI_GUI_PT(Panel):
    """Render Icons GUI."""

    bl_label = "Render Icons"
    bl_idname = "SCENE_PT_BRI_GUI"
    bl_space_type = 'PROPERTIES'
    bl_region_type = 'WINDOW'
    bl_context = "scene"

    def draw(self, context):
        layout = self.layout
        scene = context.scene

        row = layout.row()
        row.template_list("BRI_GUI_FL_UL_ImportList", "BRI_GUI_FL", scene,
                          "bri_imports", scene, "bri_imports_index")

        row = layout.row()
        row.operator('bri_gui_fl.new_item', text='ADD')
        row.operator('bri_gui_fl.delete_item', text='REMOVE')
        row.operator('bri_gui_fl.move_item', text='MOVE UP').direction = 'UP'
        row.operator('bri_gui_fl.move_item', text='MOVE DOWN').direction = 'DOWN'
        row.operator('bri_gui_fl.clear', text='CLEAR')

        if scene.bri_imports_index >= 0 and scene.bri_imports:
            item = scene.bri_imports[scene.bri_imports_index]

            row = layout.row()
            row.prop(item, "name")
            row.prop(item, "path")
            
            row = layout.row()
            row.prop(item, "position")
            row.prop(item, "outline")
        
        row = layout.row()
        row.prop(scene.bri, "output_dir")
        
        # Big render button
        layout.label(text="Big Button:")
        row = layout.row()
        row.scale_y = 3.0
        row.operator("bri.render")