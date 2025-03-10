/// @description Draw the spikeball, pole and chain
	ball_scale  = 1 - (0.01 * chain_length) * dsin(global.object_timer  * rot_speed + 90);
	
	if((global.object_timer * rot_speed) mod 360 >= 90 && (global.object_timer  * rot_speed) mod 360 <= 270)
	{
		draw_sprite(spr_flail_pole, 0, x, y);
		
		for (var i = chain_length-1; i > 0; --i) 
		{
			chain_scale = 1 - ((chain_length/50)-(i/50)) * dsin(global.object_timer  * rot_speed + 90);
			draw_sprite_ext(spr_flail_chainball, 0, x + lengthdir_x(chain_length*14-14*i+2, direction), y-26, chain_scale, chain_scale, 0, c_white, 1);
		}
		
		draw_sprite_ext(spr_flail_spikeball, 0, x + lengthdir_x(chain_length*14, direction), y-26, ball_scale, ball_scale, 0, c_white, 1);
	}
	else
	{
		draw_sprite_ext(spr_flail_spikeball, 0, x + lengthdir_x(chain_length*14, direction), y-26, ball_scale, ball_scale, 0, c_white, 1);
		
		for (var i = 2; i < chain_length; ++i) 
		{
			chain_scale = 1 - ((chain_length/50)-(i/50)) * dsin(global.object_timer  * rot_speed + 90);
			draw_sprite_ext(spr_flail_chainball, 0, x + lengthdir_x(chain_length*14-14*i+2, direction), y-26, chain_scale, chain_scale, 0, c_white, 1);
		}
		
		draw_sprite(spr_flail_pole, 0, x, y);
	}

	/*var hitbox_x = x + lengthdir_x(chain_length*16, direction);
	
	var hitbox_scale = 1 - 0.25 * dsin(global.object_timer  * rot_speed + 90);
	
	var _x = hitbox_x;
	var _y = y-26;

	draw_set_color(c_aqua);
	draw_set_alpha(0.5);
	draw_rectangle(_x - 24*hitbox_scale, _y - 24*hitbox_scale, _x + 24*hitbox_scale, _y + 24*hitbox_scale, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_text(x,y, hitbox_x);*/