level_minute = floor(global.room_current_time / 60);
level_second = floor(global.room_current_time % 60);
level_minute_str = string_replace_all(string_format(level_minute, 2, 0), " ", 0);
level_second_str = string_replace_all(string_format(level_second, 2, 0), " ", 0);

x = obj_camera.x + global.camera.width / 2;
y = obj_camera.y + 20;
depth = -9999;