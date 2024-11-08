var _delta = delta_time / 1000000;
seconds_counter += _delta;
var _current_minute = floor(global.room_current_time / 60);

// Check for enemies at the current minute
if ( _current_minute < array_length(global.spawns) && seconds_counter >= 1 ) {
	seconds_counter -= 1;
	
	// Loop through enemies at the current minute
	for (var _i = 0; _i < array_length(global.spawns[_current_minute]); _i++) {
		/// @type {Struct.SpawnInfo}
		var _spawn = global.spawns[_current_minute][_i];
		
		// Handle spawn delay if needed
		if ( struct_exists(_spawn, "delay") ) {
			if ( ! struct_exists(_spawn, "delay_counter") ) {
				_spawn.delay_counter = _spawn.delay;
			}
		
			if (_spawn.delay_counter < _spawn.delay) {
				_spawn.delay_counter++;
			}
			else {
				_spawn.delay_counter = 0;
			}
		}
		
		// Spawn amount of enemies defined in the Room Creation Code
		if ( ! struct_exists(_spawn, "delay") || _spawn.delay_counter == 0) {
			for (var _j = 0; _j < _spawn.enemy_number; _j++) {
				var _enemy = instance_create_layer(0, 0, "Instances", _spawn.object);

				_enemy.hp = _spawn.hp;
				_enemy.move_speed = _spawn.move_speed;
				_enemy.xp = _spawn.xp;
			}
		}
	}
}