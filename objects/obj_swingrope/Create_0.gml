/// @description Values
	angle = 0;
	/*for(var i = 0; i < 1; i++)
	{
		child_object[i] = instance_create_depth(x, y, depth, obj_hanging);
	}*/

	joins_amount = floor((sprite_height-2) / 12);
	
	for (var i = 0; i <= joins_amount; i++) 
	{
		_angle[i] = angle*i*0.2;
		_x[i] = lengthdir_x(15*i, _angle[i]-90);
		_y[i] = lengthdir_y(15*i, _angle[i]-90);
	}
	
	triggered = false;