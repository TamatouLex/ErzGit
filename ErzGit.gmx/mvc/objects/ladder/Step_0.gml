if place_meeting(x,y,obj7735)
{
image_alpha = 0.8
}
else
{
image_alpha = 1
}

new_width = 64 *image_xscale;
new_height= 64 *image_yscale;

/*
//Kletter Max kommt oben an
if instance_exists(obj7735)
&& obj7735.isClimbing = true
&& place_meeting(x,y,obj7735)
&& obj7735.y < y-40
{
obj7735.vspeed = -2
obj7735.isClimbing = false
}*/


if instance_exists(obj7735)
{
with(obj7735)
{
ladi=instance_nearest(x,y,ladder)
if isClimbing = true
&& y < ladi.y-40
{
isClimbing = false
vspeed = -2
}
}
}






/* */
/*  */
