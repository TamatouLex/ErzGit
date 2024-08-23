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


if instance_exists(obj7735)
{
//Links und Rechts
if keyboard_check(vk_left)
{
a=instance_create(x,y,krun)
a.image_xscale = image_xscale
instance_destroy()
}

else if keyboard_check(vk_right)
{
a=instance_create(x,y,krun)
a.image_xscale = image_xscale
instance_destroy()
}


//Change
else if obj7735.grounded = 0
{
if !instance_exists(kump)
and !instance_exists(kshoot)
{
a=instance_create(x,y,kump)
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

//Pushing / Pulling
if instance_exists(obj7735)
&& obj7735.isPushing
{
if !instance_exists(kshoot)
{
a=instance_create(x,y,kshoot)
a.image_xscale = image_xscale
a.image_index = 2
}
instance_destroy()
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


