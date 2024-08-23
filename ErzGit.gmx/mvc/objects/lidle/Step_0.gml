if instance_exists(obj7735)
{

if keyboard_check(vk_left)
{
a=instance_create(x,y,lrun)
a.image_xscale = image_xscale
instance_destroy()
}

else if keyboard_check(vk_right)
{
a=instance_create(x,y,lrun)
a.image_xscale = image_xscale
instance_destroy()
}


//Change
else if obj7735.grounded = false
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

if ani = 7
{
image_index += 1
ani = 0
}

if image_index > 3
{
image_index = 0
}


