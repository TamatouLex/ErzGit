if (yspeed == 0 && instance_exists(obj7735))
{
    if (place_meeting(x,y-obj7735.vspeed-(global.grav),obj7735))
        yspeed = -2;    //touching the player, start rising
}

event_inherited();  //movement checks

