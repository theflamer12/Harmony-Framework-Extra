/// @description Draw the stuff
if(!collected)
{
	draw_sprite(spr_collectible, image_index, x, y);
	draw_sprite(spr_collectible_ribbon, 0, x, y+16);
}
else
{
	draw_set_alpha(0.75+0.15*dsin(FRAME_TIMER));
	draw_sprite(spr_collectible_collected, image_index, x, y);
	draw_set_alpha(1);
}
