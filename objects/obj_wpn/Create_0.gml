// Inherit the parent event
event_inherited();

item_type = ITEM_TYPE.WEAPON;
item_name = "";
offset_x = 0;
offset_y = 0;
projectile = undefined;
projectile_amount = 1;
cooldown = 1.0;
cooldown_time = cooldown * game_get_speed(gamespeed_fps);
cooldown_counter = cooldown_time;
damage = 2;
critical_chance = 1; // Percent
high_critical_chance_limit = 30; // Percent
critical_multiplier_range = {min: 1.2, max: 1.8, extreme: 2};
critical_multiplier = 1;
total_damage = function() {
	critical_multiplier = 1;
	var _critical_roll = random_range(1,100);
	
	if (_critical_roll <= critical_chance) {
		// A critical roll equal to the critical chance is
		// always a high critical hit, so there's no need
		// to calculate the high critical threshold
		if (_critical_roll == critical_chance) {
			critical_multiplier = critical_multiplier_range.extreme;
		}
		else {
		    var _high_critical_threshold = critical_chance - (critical_chance * (high_critical_chance_limit / 100));
			
			// If the critical roll is close enough to the
			// critical chance, it's also a high critical hit
		    if (_critical_roll >= _high_critical_threshold) {
		        critical_multiplier = critical_multiplier_range.extreme;
				
			// If not, the critical damage is between the
			// critical damage range, getting higher as
			// higher the critical roll
		    } else {
				var _multiplier = _critical_roll / (_high_critical_threshold - 1);
                critical_multiplier = critical_multiplier_range.min + ((critical_multiplier_range.max - critical_multiplier_range.min) * _multiplier);
		    }
		}
	}
	
	return round((damage + obj_player.damage) * critical_multiplier);
}
item_function = function() {
	show_debug_message("WEAPON");
}