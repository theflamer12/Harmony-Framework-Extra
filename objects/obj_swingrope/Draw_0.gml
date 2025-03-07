	for(var i = 0; i < joins_amount; ++i) 
	{
		var stretch = point_distance(x+_x[i], y+_y[i],x+_x[i+1], y+_y[i+1])/12;
		draw_sprite_ext(spr_swingrope_rope, 0, x + _x[i], y + _y[i], 1, stretch, point_direction(x+_x[i], y+_y[i],x+_x[i+1], y+_y[i+1]) + 90, c_white, 1); 
	}

	draw_sprite(spr_swingrope_bar, 0, x+_x[joins_amount], y+_y[joins_amount]);

/*
	draw_set_color(c_aqua);
	draw_set_alpha(0.5);
	draw_rectangle(x+_x[joins_amount] - 10, y+_y[joins_amount] - 2, x+_x[joins_amount] + 10, y+_y[joins_amount] + 2, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
*/