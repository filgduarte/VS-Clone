global.room_current_time = 0;

view_camera[0] = camera_create_view(0, 0, global.camera.width, global.camera.height);
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport = global.viewport.width;
view_hport = global.viewport.height;

instance_create_layer(x, y, "Instances", global.player_char);
instance_create_layer(x, y, "Instances", obj_camera);
instance_create_layer(obj_camera.x + global.camera.width / 2, obj_camera.y + 20, "Instances", obj_txt_timer);