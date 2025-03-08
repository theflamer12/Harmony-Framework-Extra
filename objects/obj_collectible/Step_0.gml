/// @description Script
    //Set in front of the player
    depth = obj_player.start_depth - 1;
    
    //Collect
    if(player_collide_object(C_MAIN) && obj_player.state != ST_KNOCKOUT && collected == false)
    {
        //Play the sound
        play_sound(sfx_release);
        
        collected = true;
        
        ini_open(global.collectible_save);
        ini_write_real(string(room_get_name(room)), string(number), true)
        ini_close();
        
        //Create the effect
        create_effect(x, y, spr_ring_sparkle, 0.2);
    }
