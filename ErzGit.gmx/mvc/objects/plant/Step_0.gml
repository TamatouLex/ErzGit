//STONE!
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



if hp <= 0
{
instance_destroy()
}

scr_hitcolor()

//Der Biss wird getriggert
if instance_exists(obj7735)
{
if image_xscale > 0
{
if obj7735.x < x+150
and obj7735.x > x
and bite = 0
{
bite = 1
}
}

else if image_xscale < 0
{
if obj7735.x > x-150
and obj7735.x < x
and bite = 0
{
bite = 1
}
}
}



//Der Biss
if bite = 1
{
sprite_index = spr_plantbite
image_index = 0
bite = 2
}

if sprite_index = spr_plantbite
and image_index = 7
{
sprite_index = spr_plant
image_index = 0
bite = 0
}



