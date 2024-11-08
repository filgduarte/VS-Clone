var _up_pressed    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
var _down_pressed  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
var _left_pressed  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var _right_pressed = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _move_x = _right_pressed - _left_pressed;
var _move_y = _down_pressed - _up_pressed;
image_blend = c_white;
is_colliding_with_enemy = false;

// Movement
if (_move_x == 0 && _move_y == 0) {
	image_speed = 0;
}
else {
	image_speed = 1;
	image_xscale = _move_x != 0 ? _move_x : image_xscale;
	move_direction = point_direction(0, 0, _move_x, _move_y);

	x = x + lengthdir_x(move_speed, move_direction);
	y = y + lengthdir_y(move_speed, move_direction);
}