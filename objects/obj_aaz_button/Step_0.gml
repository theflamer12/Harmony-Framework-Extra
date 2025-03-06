//Render it behind the player
if obj_player.state != ST_KNOCKOUT 
    depth = obj_player.depth + 1;

if(player_collide_object(C_BOTTOM))
{
    if(!pushed) play_sound(sfx_beep);
    triggered = true;
    pushed = true;
}
else 
{
    pushed = false;
}

if(triggered)
{
    for (var i = 0; i < instance_number(activation_instance); i++;)
    {
        with(activation_instance) 
        {
            if(button_id == other.button_id && other.pushed = true && triggered = false) 
            {
                show_debug_message("Instance triggered");
                triggered = true;
            }
        }
    }
}
