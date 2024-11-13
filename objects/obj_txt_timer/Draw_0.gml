draw_set_font(fnt_alagard);
draw_set_halign(fa_right);
draw_text_transformed_color(x - 3, y, level_minute_str, scale, scale, 0, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_center);
draw_text_transformed_color(x, y, ":", scale, scale, 0, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_text_transformed_color(x + 3, y, level_second_str, scale, scale, 0, c_white, c_white, c_white, c_white, 1);

draw_set_halign(fa_left);