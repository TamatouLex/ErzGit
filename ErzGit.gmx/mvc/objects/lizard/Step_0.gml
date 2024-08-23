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

if instance_exists(lizardspurnase)
{
nose.lizzyx = x
nose.lizzyy = y

//Der Turn!
if nose.turn = 1
{
image_index = 0
sprite_index = spr_lizardturn
nose.image_xscale *= -1
nose.turn = 2
}

if nose.turn = 2
and image_index = 4
{
nose.turn = 0
image_xscale *= -1
sprite_index = spr_lizard
}
}



if sprite_index = spr_lizard
{
if image_xscale > 0
{
hspeed = 2
}

if image_xscale < 0
{
hspeed = -2
}
}

else if sprite_index = spr_lizardturn
{
hspeed = 0
}

