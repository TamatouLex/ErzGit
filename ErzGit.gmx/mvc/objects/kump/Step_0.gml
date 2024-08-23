//Switch to Throw Animation
if global.curweapon = 0
and instance_number(stone) = 2
{
stonebuffer += 1
}
else
{
stonebuffer = 0
}


if (scrButtonCheckPressed(global.shootButton))
{
if global.curweapon = 0
{
if stonebuffer < 2
{
a=instance_create(x,y,kshoot)
a.image_xscale = image_xscale
instance_destroy()
//instance_change(kshoot,true)
}
}
else if global.curweapon = 1
{
{
a=instance_create(x,y,kshoot)
a.image_xscale = image_xscale
instance_destroy()
}
}
}


//Left and Right
if keyboard_check(vk_left)
{
image_xscale = -1
}

else if keyboard_check(vk_right)
{
image_xscale = 1
}

if instance_exists(obj7735)
{

//Change
if obj7735.grounded = 1
and !instance_exists(kidle)
and !instance_exists(kshoot)
{
a=instance_create(x,y,kidle)
a.image_xscale = image_xscale
instance_destroy()
}

else if obj7735.fall = 1
and !instance_exists(kall)
and !instance_exists(kshoot)
{
a=instance_create(x,y,kall)
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


///Animation
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

