/// @description Script
	depth = obj_player.start_depth + 1;
	
	//Check for the obj_level update
	if(obj_level.stage_name != "EMPTY LEVEL")
	{
		event_perform(ev_create,0);
	}
	
    //Collect
    if(player_collide_object(C_MAIN) && obj_player.state != ST_KNOCKOUT && collected == false)
    {
        //Play the sound
        play_sound(sfx_twinkle);
        
		//Set collected flag
        collected = true;
        
		//Save data into the save file
        ini_open(global.collectible_save);
        	ini_write_real((string(obj_level.stage_name) + " " + string(obj_level.act)), string(collectible_id), true);
        ini_close();
        
        //Create the effect
		for (var i = 1; i <= 8; i++)
		{
			var angle = 360/8 * i
			create_effect(x, y+16, spr_ring_sparkle, 0.1,, 2*dsin(angle), 2*dcos(angle), 0.25*dsin(angle), 0.25*dcos(angle));
		}
    }
