//AKTIVIEREN DURCH DRAUFSPRINGEN
if place_meeting(x,y-1,obj7735)
&& active = false
{
active = true
image_index = 1
number = instance_create(x+32,y+32,TNTCount)
number.image_index = bigCount
number.depth = depth-1
number.image_xscale = 0.6
number.image_yscale = 0.6
}

if active = true
{
count += 1
}

if count >= 50
{
number.image_index -= 1
bigCount -= 1
count = 0
}

//EXPLOSION
if bigCount <= 0
{
explod=instance_create(x+32,y+64,TNTExplosion)
explod.image_xscale = 2
explod.image_yscale = 2

//Shake
shakey=instance_create(x,y,screenShake)
shakey.shakeX = 60
shakey.shakeY = 60
instance_destroy(number)
instance_destroy()
}


//On Conveyor Belt------------------------------------------------
band = instance_place(x,y+1,conveyorBelt)

if place_meeting(x,y+1,band)
{
hspeed = band.dir
}


band = instance_place(x,y+1,conveyorBelt)

//Freier Fall!
if !place_meeting(x,y+1,band)
&& !place_meeting(x,y+1,pistonV)
&& !place_meeting(x,y+1,objMovingPlatform)
&& !place_meeting(x,y+1,objBlockInvis)
&& !place_meeting(x,y+1,BigTNT)
{
hspeed = 0
gravity = 0.2
}

else
{
gravity = 0
}

///Explosion by another Explosion
if place_meeting(x,y,TNTExplosion)
{
bigCount = 0
}

