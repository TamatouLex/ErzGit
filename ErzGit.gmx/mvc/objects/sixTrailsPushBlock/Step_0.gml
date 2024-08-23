if dropped = false
{

//Wird geschoben
if x < 720
{
if place_meeting(x-1,y,objPlayer)
&& scrButtonCheck(global.rightButton)
{
hspeed = objPlayer.hspeed/3
}
else
{
hspeed = 0
}
}

//Fällt runter
else
{
hspeed = 0.7
gravity = 0.3
image_angle -= 2
}
}

//Am Boden aufkommen
if vspeed > 2
&& y > 553
{
y = 560
dropped = true
hspeed = 0
vspeed = 0
gravity = 0
image_angle = lerp(image_angle,-90,0.5)
}

