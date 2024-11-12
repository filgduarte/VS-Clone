// Base stats
stats = {
	move_speed	: 1,
	max_hp		: 50,
	recover_rate: 0.1,
	damage		: 3,
	armor		: 0,
}

// Stats bonuses
bonus = {
	move_speed	: 1,
	max_hp		: 1,
	recover_rate: 1,
	damage		: 1,
	armor		: 1,
}

// Real stats
move_direction	= 0;
move_speed		= stats.move_speed * bonus.move_speed;
max_hp			= stats.max_hp * bonus.max_hp;
hp				= max_hp;
recover_rate	= stats.recover_rate * bonus.recover_rate;
damage			= stats.damage * bonus.damage;
armor			= stats.armor * bonus.armor;

// Player condition
is_colliding_with_enemy = false;
is_taking_damage = false;
is_recovering_hp = false;

// Inventory
instance_create_layer(x, y, layer, obj_inventory);
obj_inventory.items[0] = obj_wpn_sword;
with (obj_inventory) {
	event_user(0);
}

// Extra
healthbar_position  = new Vector2(
	sprite_get_width(spr_gui_healthbar) / 2,
	sprite_height / 2 + 2
);

alarm[1] = -1;