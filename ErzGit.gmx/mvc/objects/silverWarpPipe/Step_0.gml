if closed = true
{
image_speed = 0.1
}

if !place_meeting(x,y,objPlayer)
&& !place_meeting(x,y,objBlock)
&& closed = true
{
solid = true
instance_create(x,y,objBlock)
}

