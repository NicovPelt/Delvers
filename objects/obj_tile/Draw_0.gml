draw_self();
draw_set_font(font0);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(x, y, string(grid_pos_to_real("x",x_pos)) + ", " + string(grid_pos_to_real("y",y_pos)))

draw_set_halign(fa_left);
draw_set_halign(fa_bottom);

if(p_index != -1)
	draw_rectangle_color(x-10, y-10, x+10, y+10, c_red, c_red, c_red, c_red, true);