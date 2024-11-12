/// @description This function returns a Vector2() containing a random position
/// inside or outside the viewport (default: outside). You can also specify an offset.
/// @param {Real} _offset_x
/// @param {Real} _offset_y
/// @param {Bool} _inside_viewport
/// @return {Struct.Vector2} 
function get_random_position(_offset_x = 0, _offset_y = 0, _inside_viewport = false) {
	var _random_side = irandom(1);
	var _random_position = new Vector2();
	var _operation_sign = _inside_viewport ? 1 : -1;
	var _viewport = {
		x1: obj_camera.x + _offset_x * _operation_sign,
		x2: obj_camera.x + obj_camera.camera_width - _offset_x * _operation_sign,
		y1: obj_camera.y + _offset_y * _operation_sign,
		y2: obj_camera.y + obj_camera.camera_height - _offset_y * _operation_sign
	};
	
	if (_random_side == 0) {
		_random_position.x = random_range(_viewport.x1, _viewport.x2); // Random x value
		_random_position.y = choose(_viewport.y1, _viewport.y2);       // Choose between top and bottom
	}
	else {
		_random_position.x = choose(_viewport.x1, _viewport.x2);       // Choose between left and right
		_random_position.y = random_range(_viewport.y1, _viewport.y2); // Random y value
	}

	return _random_position;
}