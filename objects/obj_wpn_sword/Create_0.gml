// Inherit the parent event
event_inherited();

item_type = ITEM_TYPE.WEAPON;
item_name = "Sword"
projectile = obj_hit_sword;
projectile_amount = 1;
damage = 5;
critical_chance = 30;
offset_x = 10;
offset_y = -15;

item_function = function() {
	repeat(projectile_amount) {
		var _hit = instance_create_layer(x, y, layer, projectile);
		_hit.damage = total_damage();
		_hit.critical_multiplier_range = {
			min: 1, // No critical
			max: critical_multiplier_range.extreme
		};
		_hit.critical_multiplier = critical_multiplier;
		_hit.offset_x = offset_x;
		_hit.offset_y = offset_y;
	}
}