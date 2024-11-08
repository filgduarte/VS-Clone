draw_self();
draw_sprite_ext(spr_gui_healthbar, 0, x - healthbar_position.x, y + healthbar_position.y, 1, 1, 0, c_black, 1);
draw_sprite_ext(spr_gui_healthbar, 0, x - healthbar_position.x, y + healthbar_position.y, hp / max_hp, 1, 0, c_red, 1);