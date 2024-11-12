// Inherit the parent event
event_inherited();

projectile = obj_hit_sword;
projectile_amount = 1;
damage = 5;
offset_x = 10;
offset_y = -15;

item_function = function() {
	var _i = 0;
	
	repeat(projectile_amount) {
		_i++;
		
		var _hit = instance_create_layer(x, y, layer, projectile);
		_hit.damage = damage + obj_player.damage;
		_hit.offset_x = offset_x;
		_hit.offset_y = offset_y;
	}
}