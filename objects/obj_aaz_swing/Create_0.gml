/// @description Swing startup
	//Render the swing behind the player
	depth = obj_player.depth + 50;
	
	//Set the chain amount depending on the width of the sprite [Useing 16x16 grid]
	chain_amount = floor(sprite_height / 16);
	
	//Craete the platform
	for (var i = 0; i < swings_amount; i++) 
	{
		platform[i] = instance_create_depth(x, y, depth-1, obj_aaz_swing_platform);
	}