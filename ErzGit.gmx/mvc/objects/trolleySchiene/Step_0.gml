Frametrap += 1
if Frametrap = 2
{
visible = true
Frametrap = 0
}



/*
if reachedHorizon = false
{
image_angle = 90
}
else
{
image_angle = point_direction(pillarMaker.x,pillarMaker.y,x,y)-180
}
*/
image_angle = point_direction(pillarMaker.x,pillarMaker.y,x,y)-180

//Initial Dir = Up (OVER THE HILL)
if hugel = true
&& y < trolleyHorizon.y
{
vspeed = speedOverall
reachedHorizon = true
}


streckeTraveled += speedOverall
size = (streckeTraveled / strecke) *1.2


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



if trolleyFront.phase = 1
{
//image_angle = point_direction(pillarMaker.x,pillarMaker.y,x,y)-180
}






//Setzt Player Trolley auf seine Position
if y > 555 && dir = 0 && posSet = false
{

normalOffset = pillarMaker.x-x



if x+35 > pillarMaker.x+6
{
//hAdjust = (x+35)-pillarMaker.x
hAdjust = -15
}

else if x+35 < pillarMaker.x-6
{
//hAdjust = pillarMaker.x-(x+35)
hAdjust = 15
}

else
{
hAdjust = 0
}


trolleyFront.x = lerp(trolleyFront.x,x+35+hAdjust,0.5)

//trolleyFront.x = x+35+hAdjust
//trolleyFront.image_angle = image_angle-90
posSet = true
}

/* */
/*  */
