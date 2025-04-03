/// @description Script
	//Add frames
	frame += image_speed;

	//Disable animation loop
	if(timer_kill)
	{
		image_index = min(frame, image_number-1);
	}
	else
	{
		image_index = frame mod image_number;
	}
	
	//Destroy if animation is done / effect is off-screen
	if((frame >= image_number && timer_kill) || !on_screen(16, 16))
	{
		instance_destroy();
	}
		
	//Physics
	x += x_speed;
	y += y_speed;
	
	//Acceleration
	x_speed += x_accel;
	y_speed += y_accel;
	
	//Update other stuff
	image_alpha += trans_speed
	image_angle += ang_speed
	image_xscale += xscale_spd
	image_yscale += yscale_spd