if (instance_exists(obj_player)) {
	x = obj_player.x - camera_width / 2;
	y = obj_player.y - camera_height / 2;
}

camera_set_view_pos(view_camera[0],x,y);