if !instance_exists(target)
&& instance_exists(objPlayer)
{
target = objPlayer
}

if instance_exists(objPlayer)
{
gravity = lerp(gravity,-0.3,0.001)
gravity_direction = point_direction(target.x,target.y,x,y)
}


if speed > 4
{
speed = 4
}



