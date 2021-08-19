import bpy
import os
from math import radians

context = bpy.context

models_path = "//models/"
materials_path = "//materials/"
render_path = "//render/"

# floor_models = ["bretling.obj", "bretling.obj"]
wall_models = ["pellets/pellet_catcher.qc", "pellets/pellet_catcher_timed.qc", "pellets/pellet_launcher.qc", "pellets/pellet_launcher_inf.qc"]

#create a scene
scene = bpy.data.scenes.new("Scene")
camera_data = bpy.data.cameras.new("Camera")

camera = bpy.data.objects.new("Camera", camera_data)
camera.location = (-2.0, 3.0, 3.0)
camera.rotation_euler = ([radians(a) for a in (422.0, 0.0, 149)])
scene.objects.link(camera)

# do the same for lights etc
scene.update()

for model_path in models:
    scene.camera = camera
    path = os.path.join(models_path, model_path)
    # make a new scene with cam and lights linked
    context.screen.scene = scene
    bpy.ops.scene.new(type='LINK_OBJECTS')
    context.scene.name = model_path
    cams = [c for c in context.scene.objects if c.type == 'CAMERA']
    #import model
    bpy.ops.import_scene.obj(filepath=path, axis_forward='-Z', axis_up='Y', filter_glob="*.obj;*.mtl")
    for c in cams:
        context.scene.camera = c                                    
        print("Render ", model_path, context.scene.name, c.name)
        context.scene.render.filepath = "somepathmadeupfrommodelname"
        bpy.ops.render.render(write_still=True)