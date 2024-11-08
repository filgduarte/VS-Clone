move_direction = point_direction(other.x, other.y, x, y);

x += lengthdir_x(move_speed, move_direction);
y += lengthdir_y(move_speed, move_direction);