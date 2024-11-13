draw_set_font(fnt_alagard);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_color(x, y, string(damage_amount), scale, scale, 0, c_red, c_red, c_red, c_red, alpha);

draw_set_halign(fa_left);
draw_set_valign(fa_top);