/// @description This funcion moves an object towards a given point,
/// optionally at a given speed (default: 1.0) and from a given point (default: x, y).
/// It also mirrors the object sprite to face the moving direction.
/// @param {Real} _new_x
/// @param {Real} _new_y
/// @param {Real} _speed
/// @param {Real} _old_x
/// @param {Real} _old_y
function move_towards(_new_x, _new_y, _speed = 1.0, _old_x = x, _old_y = y) {
	var _direction = point_direction(_old_x, _old_y, _new_x, _new_y);
	var _x_increment = lengthdir_x(_speed, _direction);
	var _y_increment = lengthdir_y(_speed, _direction);
	
	x += _x_increment;
	y += _y_increment;
	image_xscale = _x_increment != 0 ? sign(_x_increment) : image_xscale;
}