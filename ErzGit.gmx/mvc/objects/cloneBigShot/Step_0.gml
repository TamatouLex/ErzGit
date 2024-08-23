image_xscale += 0.1
image_yscale += 0.1


//Move Upwards
if y > obj7735.y
{
vspeed -= 0.1
}

//Move Downwards
if y < obj7735.y
{
vspeed += 0.1
}

//LIMITS
if vspeed > maxVspeed
{
vspeed = maxVspeed
}
else if vspeed < -maxVspeed
{
vspeed = -maxVspeed
}


//Bullet goes to its max Hspeed
if hspeed > 0
&& hspeed < maxHspeed
{
hspeed += 0.2
}

else if hspeed < 0
&& hspeed > -maxHspeed
{
hspeed -= 0.2
}


//Offscreen prevention
if y > 780
{
vspeed -= 0.5
}



