//STONE
stonehit = instance_place(x,y,stone)
if (stonehit != noone)
{
with(stonehit)
{
destroy = 1
}
hp -= 1
hit = 1
}

//KNIFE
knifehit = instance_place(x,y,knife)
if (knifehit != noone)
{
with(knifehit)
{
instance_destroy()
}
hp -= 1
hit = 1
}



scr_hitcolor()


if hp = 0
{
instance_destroy()
}

if instance_exists(clownspurnase)
{
nose.clownx = x
nose.clowny = y


if sprite_index = spr_clownbotwalk
{
//Der Turn!
if nose.turn = 1
{
hspeed *= -1
image_xscale *= -1
nose.image_xscale *= -1
nose.turn = 0
}


if image_xscale > 0
{
hspeed = 4
}

if image_xscale < 0
{
hspeed = -4
}



//CHANGE TO JUMP
if image_xscale > 0
{
if obj7735.x < x+200
{
image_index = 0
sprite_index = spr_clownbotjump
}
}

if image_xscale < 0
{
if obj7735.x > x-200
{
image_index = 0
sprite_index = spr_clownbotjump
}
}
}
}



//JUMP
if sprite_index = spr_clownbotjump
{
nose.jump = true
image_speed = 0
count += 1

if count < 10
{
hspeed = 0
}

//Absprung
if count = 10
{
image_index = 1
vspeed = -4
hspeed = image_xscale*2
gravity = 0.2
}

if count = 15
{
image_index = 2
}

if count = 35
{
image_index = 3
}


//Bei Kollision explodiert er dann
if count > 15 
if place_meeting(x,y,objBlockInvis)
|| place_meeting(x,y,obj7735)
{
instance_change(explosion,true)
}
}




