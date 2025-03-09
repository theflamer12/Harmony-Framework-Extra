/// @description Update Pause Menu
	global.process_objects = false;
	//instance_activate_object(obj_fade);
	delay++;
	if(delay > 2) 
	{
		switch(pause_state)
		{
			case 0:
			{
				var _input_y_press = (Input.DownPress - Input.UpPress);
				var _input_accept = (Input.StartPress || Input.APress);
				if(_input_y_press != 0) play_sound(sfx_beep);
				pause_options = clamp(pause_options + _input_y_press, 0, 2);
				if(_input_accept){
					switch(pause_options)
					{
						case 0:
						{
							play_sound(sfx_checkpoint);
							global.process_objects = true;
							audio_resume_all();
							instance_destroy();
						}
						break;
						
						case 1:
						{
							if(global.life > 1)
							{
								play_sound(sfx_checkpoint);
								pause_state++;
							}
							else
							{
								play_sound(sfx_hurt);
							}
						}
						break;
						
						case 2:
						{
							play_sound(sfx_checkpoint);
							pause_state++;
						}
						break;
					}
				}
			}
			break;
		
			case 1:
			{
				switch(pause_options)
				{
					case 1:
					{
						//Fading stuff is bugged rn.
						//if you can fix it, you are a geek.
						//fade_to_room(noone, 5, FADE_BLACK);
						//if(obj_fade.fade_timer == 0)
						{
							global.process_objects = true;
							instance_activate_all();
							surface_free(pause_menu);
							pause_menu = -1;
							reset_stage_data();
							global.life -= 1;
							room_goto(room);
						}
					}
					break;
				
					case 2:
					{
						//Fading stuff is bugged rn.
						//if you can fix it, you are a geek.
						//fade_to_room(noone, 5, FADE_BLACK);
						//if(obj_fade.fade_timer == 0)
						{
							global.process_objects = true;
							instance_activate_all();
							surface_free(pause_menu);
							pause_menu = -1;
							reset_stage_data();
							room_goto(rm_stage_select);
						}
					}
					break;
				}
			}
			break;
		}
	}