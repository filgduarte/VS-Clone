// Inherit the parent event
event_inherited();

item_type = ITEM_TYPE.UPGRADE;
item_function = function() {
	show_debug_message("UPGRADE");
}

event_user(0);