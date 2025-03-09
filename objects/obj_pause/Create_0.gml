/// @description Create Pause Menu
	delay = 0;
	timer = 0;
	pause_options = 0;
	pause_state = 0;
	pause_menu = surface_create(global.window_width, global.window_height);
	
	audio_pause_all();
	play_sound(sfx_skid);
	global.process_objects = false;
	//instance_activate_object(obj_fade);
