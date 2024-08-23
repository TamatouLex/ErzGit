//Outside Room
//scr_changeRoom()

//Despawn other Bodyparts
instance_destroy(krun)
instance_destroy(lrun)
instance_destroy(kump)
instance_destroy(lump)
instance_destroy(lidle)
instance_destroy(kidle)
instance_destroy(kall)
instance_destroy(lall)
instance_destroy(kidle)

instance_destroy(kshoot)

//Spawn the Climb Sprite
if !instance_exists(climb)
{
instance_create(x,y,climb)
}

//Sichtbarkeit
if global.lua = 1
{
visible = true
}
else
{
visible = false
}

gravity = 0

if instance_exists(ladder)
{
nearestladder = instance_nearest(x,y,ladder)
x = nearestladder.x+32
}
else
{
x = 0
}

//Controlls
if keyboard_check(vk_up)
{
vspeed = -4
}

else if keyboard_check(vk_down)
{
vspeed = 4
}

else
{
vspeed = 0
}

if keyboard_check(vk_shift)
{
instance_destroy(climb)
instance_change(obj7735,true)
}

if instance_exists(ladder)
{
//Runter kommen von der Leiter
//Unten
if y > nearestladder.y+nearestladder.new_height-35
{
y-= 33
instance_destroy(climb)
instance_change(obj7735,true)
}

//Oben
if y < nearestladder.y-50
{
instance_destroy(climb)
instance_change(obj7735,true)
}
}

