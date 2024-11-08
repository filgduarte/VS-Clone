image_blend = c_red;
is_colliding_with_enemy = true;

if ( ! is_taking_damage ) {
	is_taking_damage = true;
	hp -= other.damage;
	
	alarm[0] = 10;
}

if (hp <= 0) {
	show_message("YOU DIED!");
	room_restart();
}