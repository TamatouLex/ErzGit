if dropped = false
{

if place_meeting(x+1,y,objPlayer)
&& scrButtonCheck(global.leftButton)
{
if image_angle < 8
{
image_angle += 0.1
}
}




//Fall Over
if image_angle >= 8
{
image_angle += 3*(image_angle/50)
y -= 0.25
}
}


if image_angle >= 90
{
dropped = true
cameraflag.y = lerp(cameraflag.y,820,0.1)
}


