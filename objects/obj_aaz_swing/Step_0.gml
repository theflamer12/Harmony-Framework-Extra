/// @description Swing platform	
	//Update angle and modulate it
	angle = (angle + swing_speed) mod 360;
	
	//Platform code here
	for (var i = 0; i < swings_amount; i++) 
	{
		//Update angle and modulate it
		var sub_angle = angle + (360/swings_amount*i);
		
		//Platform local variables
		var chain_x, chain_y, old_x, old_y, diff_x, diff_y;
			
		//Platform movement
		if(platform_type == "swing_platform")
		{
			var chain_x = x + floor((16 * chain_amount) * dsin(dcos(sub_angle) * swing_range));
			var chain_y = y + floor((16 * chain_amount) * dcos(dcos(sub_angle) * swing_range));
		}
		else 
		{
			var chain_x = x + floor((16 * chain_amount) * dsin(sub_angle)); 
			var chain_y = y + floor((16 * chain_amount) * dcos(sub_angle));
		}
		
		//Platform code here
		with(platform[i])
		{
			//Set previous position
			old_x = x;
			old_y = y;
			
			//Position the platform
			x = chain_x;
			y = chain_y;
			
			//Get the difference to move the player
			diff_x = floor(x) - floor(old_x);
			diff_y = floor(y) - floor(old_y);
			
			//Move the player
			if(obj_player.ground && player_collide_object(C_BOTTOM_EXT))
			{
				obj_player.x += floor(diff_x);	
				obj_player.y += floor(diff_y);	
			}
		}
	}