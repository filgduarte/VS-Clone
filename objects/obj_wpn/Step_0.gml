x = obj_player.x + offset_x;
y = obj_player.y + offset_y;

cooldown_counter--;
if (cooldown_counter <= 0) {
	event_user(0);
	cooldown_counter = cooldown_time;
}