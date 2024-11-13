image_blend = c_white;

if (hp <= 0) {
	image_alpha = lerp(image_alpha, 0, 0.2);
	image_xscale = lerp(abs(image_xscale), 0, 0.2) * sign(image_xscale);
	image_yscale = lerp(image_yscale, 0, 0.2);
	
	if (image_alpha <= 0) {
		instance_destroy();
	}
}

depth = -y;

move_towards(obj_player.x, obj_player.y, move_speed);