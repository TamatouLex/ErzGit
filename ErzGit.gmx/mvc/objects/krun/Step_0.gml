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



//Links und Rechts
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
a=instance_create(x,y,kidle)
a.image_xscale = image_xscale
instance_destroy()
}

if instance_exists(lrun)
{
image_index = lrun.image_index
}

if instance_exists(obj7735)
{
//Change
if obj7735.grounded = 0
and !instance_exists(kshoot)
and !instance_exists(kump)
{
a=instance_create(x,y,kump)
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

