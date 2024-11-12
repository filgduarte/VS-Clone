if (id_hit == other.id) {
	exit
}

var _knockback_speed = other.pushback_speed * knockback_multiplier;
move_towards(x, y, _knockback_speed, other.x, other.y);

hp -= other.damage;
id_hit = other.id;