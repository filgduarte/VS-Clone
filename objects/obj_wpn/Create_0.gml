// Inherit the parent event
event_inherited();

item_type = TYPE.WEAPON;
projectile = undefined;
projectile_amount = 1;
damage = 3.0;
cooldown = 1.0;
cooldown_time = cooldown * game_get_speed(gamespeed_fps);
cooldown_counter = cooldown_time;
item_function = function() {
	show_debug_message("WEAPON");
}

offset_x = 0;
offset_y = 0;