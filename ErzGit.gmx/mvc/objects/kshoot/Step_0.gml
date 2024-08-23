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
image_index = 0
count = 0
}
}
else if global.curweapon = 1
{
image_index = 0
count = 0
}
}

//Dreht sich in die Richtung des
if instance_exists(obj7735)
&& obj7735.isPushing = true
&& instance_exists(obj7735.pushObject)
{
image_xscale = obj7735.pushObject.image_xscale
}


count += 1

//SHOOT ANIMATION
if count = 4
{
image_index = 1
}

if count = 8
{
image_index = 2
}

if instance_exists(obj7735)
{
//Change
if count >= 14 && obj7735.isPushing = false
{
//Nicht in der Luft
if obj7735.grounded = 0
and !instance_exists(kidle)
and !instance_exists(land)
{
a=instance_create(x,y,kidle)
a.image_xscale = image_xscale
}
else if obj7735.grounded = 1
and !instance_exists(kump)
{
a=instance_create(x,y,kump)
a.image_xscale = image_xscale
}


instance_destroy()
}

if instance_exists(lrun)
&& obj7735.isPushing = false
{
image_xscale = lrun.image_xscale
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

