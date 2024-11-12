move_direction = 0;
move_speed = 0.5;
knockback_multiplier = 1;
hp = 1;
xp = 1;
damage = 2;
damage_delay = 0.5;
id_hit = undefined;

var _offset_x = random_range(sprite_width, sprite_width * 2);
var _offset_y = random_range(sprite_height, sprite_height * 2);
var _position = get_random_position(_offset_x, _offset_y);

x = _position.x;
y = _position.y;