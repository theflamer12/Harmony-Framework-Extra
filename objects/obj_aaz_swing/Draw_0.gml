/// @description Draw the swing
	//Draw the point
	draw_sprite(spr_aaz_swing_point, 0, x, y+8);
	
	//Chain code
	for (var j = 0; j < swings_amount; j++) 
	{
		var sub_angle = angle + (360/swings_amount*j);
		
		if(on_screen(16 * chain_amount, 16 * chain_amount))
		{
			for(var i = 1; i < chain_amount; i++)
			{
				//Chain local variables
				var chain_x, chain_y;
				
				//Chain movement
				if(platform_type == "swing_platform")
				{
					var chain_x = x + floor((16 * i) * dsin(dcos(sub_angle) * swing_range));
					var chain_y = y + floor((16 * i) * dcos(dcos(sub_angle) * swing_range));
				}
				else
				{
					var chain_x = x + floor((16 * i) * dsin(sub_angle));
					var chain_y = y + floor((16 * i) * dcos(sub_angle));
				}
			
				//Draw the chains
				draw_sprite(spr_aaz_swing_chains, 0, chain_x, chain_y + 8);
			}
		}
	}
	