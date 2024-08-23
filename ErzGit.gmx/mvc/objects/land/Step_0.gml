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
b=instance_create(x,y,lidle)
b.image_xscale = image_xscale
instance_destroy()
//instance_change(kshoot,true)
}
}
else if global.curweapon = 1
{
{
a=instance_create(x,y,kshoot)
a.image_xscale = image_xscale
b=instance_create(x,y,lidle)
b.image_xscale = image_xscale
instance_destroy()
}
}
}

landstun += 1 
if landstun > 10
{
//Links und Rechts
if keyboard_check(vk_left)
{
a=instance_create(x,y,krun)
a.image_xscale = image_xscale
b=instance_create(x,y,lrun)
b.image_xscale = image_xscale
instance_destroy()
}


else if keyboard_check(vk_right)
{
a=instance_create(x,y,krun)
a.image_xscale = image_xscale
b=instance_create(x,y,lrun)
b.image_xscale = image_xscale
instance_destroy()
}


//Change
else if instance_exists(obj7735)
&& obj7735.grounded = 0
{
if !instance_exists(kump)
&& !instance_exists(kshoot)
{
a=instance_create(x,y,kump)
a.image_xscale = image_xscale
}
if !instance_exists(lump)
{
b=instance_create(x,y,lump)
b.image_xscale = image_xscale
}
instance_destroy()
}

}

//Animation
ani += 1
if ani = 10
{
image_index = 1
}

if ani = 12
{
image_index = 2
}

if ani = 14
{
image_index = 3
}

if ani = 16
{
image_index = 3
}

if ani = 18
{
image_index = 4
}

if ani = 20
{
image_index = 5
}

if ani = 22
{
image_index = 6
}

if ani = 24
{
image_index = 7
}

if ani = 45
{
image_index = 8
}

if ani = 48
{
image_index = 7
}

if ani = 51
{
image_index = 8
}

if ani = 54
{
image_index = 7
}


if ani = 90
{
ani -= irandom_range(1,45)
}

