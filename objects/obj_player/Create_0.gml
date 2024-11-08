// Player stats
move_direction = 0.0;
move_speed = 1.0;
max_hp = 50.0;
hp = max_hp;
recover_rate = 0.5;

// Player condition
is_colliding_with_enemy = false;
is_taking_damage = false;
is_recovering_hp = false;

// Extra
healthbar_position = {
	x: sprite_get_width(spr_gui_healthbar) / 2,
	y: sprite_height / 2 + 2
}

alarm[1] = -1;