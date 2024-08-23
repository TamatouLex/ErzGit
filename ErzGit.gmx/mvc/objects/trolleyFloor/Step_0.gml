Frametrap += 1
if Frametrap = 2
{
visible = true
Frametrap = 0
}


//Initial Dir = Up (OVER THE HILL)
if hugel = true
&& y < trolleyHorizon.y
{
vspeed = speedOverall
reachedHorizon = true
}


streckeTraveled += speedOverall
size = (streckeTraveled / strecke) *20


image_xscale = size
image_yscale = size

xOffset = (streckeTraveled / strecke)*32

if dir = -1
{
x = (xstart-xOffset)
}
else if dir = 1
{
x = (xstart+xOffset)
}



image_alpha += 0.04


