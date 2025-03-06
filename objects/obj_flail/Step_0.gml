/// @description Update the angle and damage hixbox
	angle = 90 * dsin(global.object_timer * rot_speed);
	direction = angle + 90;
	
	if(on_screen() && (((global.object_timer * rot_speed + 180) mod 360 == 180) || ((global.object_timer * rot_speed + 180) mod 360 == 0))) 
	{
		play_sound(sfx_flail);
	}

	if((global.object_timer * rot_speed) mod 360 >= 90 && (global.object_timer  * rot_speed) mod 360 <= 270) 
	{
		attacking = true;
	}
	else 
	{
		attacking = false;
	}
	
	var hitbox_x = x + lengthdir_x(chain_length*14, direction);
	
	var hitbox_scale = 1 - 0.25 * dsin(global.object_timer  * rot_speed + 90);

	if(attacking && enemy_check_region(-24*hitbox_scale, -24*hitbox_scale, 24*hitbox_scale, 24*hitbox_scale, hitbox_x, y-26) && obj_player.state != ST_KNOCKOUT && !obj_player.debug) 
	{
		player_hurt();
		play_sound(sfx_spike);
	}
