var _up_pressed    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
var _down_pressed  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
var _left_pressed  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var _right_pressed = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _new_x = _right_pressed - _left_pressed;
var _new_y = _down_pressed - _up_pressed;

image_blend = c_white;
is_colliding_with_enemy = false;

// Movement
if (_new_x == 0 && _new_y == 0) {
	image_speed = 0;
}
else {
	image_speed = 1;
	
	move_towards(_new_x, _new_y, move_speed, 0, 0);
}