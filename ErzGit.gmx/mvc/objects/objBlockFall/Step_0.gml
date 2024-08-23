if (vspeed == 0 && instance_exists(obj7735))
{
    if (place_meeting(x,y-obj7735.vspeed-(global.grav),obj7735))
        vspeed = 2; //touching the player, start falling
}

event_inherited();  //movement checks

