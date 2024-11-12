for (var _i = 0; _i < max_items; _i++) {
	if ( !is_undefined(items[_i]) && !instance_exists(items[_i]) ) {
		instance_create_layer(x, y, layer, items[_i]);
	}
}