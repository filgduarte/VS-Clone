depth = -y;
move_direction = point_direction(x, y, obj_player.x, obj_player.y);
image_xscale = hspeed != 0 ? sign(hspeed) : image_xscale;

x += lengthdir_x(move_speed, move_direction);
y += lengthdir_y(move_speed, move_direction);