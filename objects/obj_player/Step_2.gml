// HP Recovery
if ( !is_colliding_with_enemy && hp < max_hp ) {	
	if ( alarm[1] < 0 ) {
		alarm[1] = game_get_speed(gamespeed_fps);
	}

	if (is_recovering_hp) {
		alarm[1] = -1;
		hp = min(hp + recover_rate, max_hp);
		is_recovering_hp = false;
		
		show_debug_message(hp);
	}
}