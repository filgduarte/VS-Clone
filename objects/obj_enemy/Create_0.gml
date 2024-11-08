move_direction = 0;
move_speed = 0.5;
hp = 1;
xp = 1;
damage = 2;
damage_delay = 0.5;

var _offset = {
	x: random_range(sprite_width, sprite_width * 2),
	y: random_range(sprite_height, sprite_height * 2)
}

var _position = get_random_position(_offset);

x = _position.x;
y = _position.y;