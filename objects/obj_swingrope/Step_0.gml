/// @description Script
var player = instance_nearest(x, y, obj_player);

if(check_region(-10, -2, 10, 2, x+_x[joins_amount], y+_y[joins_amount]) && player.state != ST_KNOCKOUT && !player.debug && player.y_speed >= 0 || triggered)
{
	if(!triggered) 
	{
		triggered = true;
		play_sound(sfx_grab);
	}
	
	if(triggered == true)
	{
		with(player)
		{
			x_speed = 0;
			y_speed = 0;
			ground = false;
			x = floor(other.x + other._x[other.joins_amount]);
			y = floor(other.y + other._y[other.joins_amount] + 23);
			state = ST_NULL;
			animation_play(animator, ANIM_LOOKUP);
		}
	}
	
	if((player.press_action || player.state == ST_JUMP) && triggered)
	{
		with(player)
		{
			x = floor(other.x + other._x[other.joins_amount]);
			y = floor(other.y + other._y[other.joins_amount]);
			y_speed = -6;
			ground = false;
			state = ST_JUMP;
			play_sound(sfx_jump);
		}
		triggered = false;
	}
}