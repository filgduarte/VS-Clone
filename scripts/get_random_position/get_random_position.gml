/// @param {{x: Real, y: Real}} _offset
/// @returns {{x: Real, y: Real}} 
function get_random_position(_offset) {
	var _viewport = {
		x1: obj_camera.x - _offset.x,
		x2: obj_camera.x + obj_camera.camera_width + _offset.x,
		y1: obj_camera.y - _offset.y,
		y2: obj_camera.y + obj_camera.camera_height + _offset.y
	};
	
	var _spawn_side = irandom(1);
	var _spawn_x, _spawn_y;
	
	if (_spawn_side == 0) {
		_spawn_x = random_range(_viewport.x1, _viewport.x2); // Random x value
		_spawn_y = choose(_viewport.y1, _viewport.y2);       // Choose between top and bottom
	}
	else {
		_spawn_x = choose(_viewport.x1, _viewport.x2);       // Choose between left and right
		_spawn_y = random_range(_viewport.y1, _viewport.y2); // Random y value
	}

	return {
		x: _spawn_x,
		y: _spawn_y
	};
}