function player_inv_speed(){
	//Subtract values
	speed_shoes = max(speed_shoes - 1, 0);
	if(knockout_type = 0)invincible_timer = max(invincible_timer - 1, 0);
	
	//Adjust flags
	if(speed_shoes = 0) speed_shoes_flag = false; else speed_shoes_flag = true;
	if(invincible_timer = 0 && invincible) invincible = false;
	
	//Stop jingles
	if(speed_shoes == 0)
	{
		if(global.speed_shoes_music == 0 && obj_music.play_data[Jingle] == "j_speedshoe")
		{
			stop_jingle(true, 1);
		}
		
		if(global.speed_shoes_music == 1 && obj_music.play_pitch[BGM] > obj_level.stage_pitch)
		{
			music_set_pitch(BGM, obj_level.stage_pitch);
		}
	}
	
	if(obj_music.play_data[Jingle] = "j_invincible" && !invincible)
	{
		stop_jingle(true, 1);
	}
	
	//Invincible sparkles
	if(invincible)
	{
		if(!instance_number(obj_invinciblespark))
		{
			instance_create_depth(x, y, depth-10, obj_invinciblespark);
		}
	}
}