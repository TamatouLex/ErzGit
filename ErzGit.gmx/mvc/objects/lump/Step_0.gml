/// @description Animation
ani += 1

if ani = 8
{
image_index = 1
}

if ani = 16
{
image_index = 2
ani = 0
}

if instance_exists(obj7735)
{
//Change
if obj7735.grounded = 1
and !instance_exists(lidle)
{
a=instance_create(x,y,lidle)
a.image_xscale = image_xscale
instance_destroy()
}

//Change
else if obj7735.fall = 1
and !instance_exists(lall)
{
a=instance_create(x,y,lall)
a.image_xscale = image_xscale
instance_destroy()
}

//Climbing 
if obj7735.isClimbing = true
{
visible = false
}
else
{
visible = true
}
}

if keyboard_check(vk_left)
{
image_xscale = -1
}

else if keyboard_check(vk_right)
{
image_xscale = 1
}

