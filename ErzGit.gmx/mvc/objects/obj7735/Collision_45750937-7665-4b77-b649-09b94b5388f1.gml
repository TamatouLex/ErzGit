/*
if (global.grav == 1)   //normal
{
    if (y-vspeed/2 <= other.y)
    {
        if (other.vspeed >= 0)
        {
            y = other.y-48; //Test für 7735
            vspeed = other.vspeed;
            
            onPlatform = true;
            djump = 1;
        }
        
    }
}
*/




//Real test ohne schnickschnack

    if (y+10 <= other.y)
    {
        if (other.vspeed >= 0)
        {
            y = other.y-48; //Test für 7735
            vspeed = other.vspeed;
            
            onPlatform = true;
            djump = 1;
        }
    }

    
    
    
    
    
    
    
/*
else    //flipped
{
    if (y-vspeed/2 >= other.y+other.sprite_height-1)
    {
        if (other.yspeed <= 0)
        {
            y = other.y+other.sprite_height+8;
            vspeed = other.yspeed;
        }
        
        onPlatform = true;
        djump = 1;
    }
}

/* */
/*  */
