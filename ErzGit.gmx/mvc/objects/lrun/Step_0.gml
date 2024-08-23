if keyboard_check(vk_left)
{
image_xscale = -1
}

else if keyboard_check(vk_right)
{
image_xscale = 1
}

else
{
a=instance_create(x,y,lidle)
a.image_xscale = image_xscale
instance_destroy()
}

if instance_exists(obj7735)
{
//Change
if obj7735.grounded = 0
{
if !instance_exists(lump)
{
a=instance_create(x,y,lump)
a.image_xscale = image_xscale
}
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


//Animation
ani += 1
if ani = 5
{
image_index += 1
ani = 0
}

if image_index > 7
{
image_index = 0
}

