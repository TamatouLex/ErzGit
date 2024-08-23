count += 1

if count >= 50
{
bigCount -= 1
count = 0
}


if bigCount <= 0
{
//Flash
bling=instance_create(x,y,flash)
bling.flashSpeed = 0.01
//Shake
shakey=instance_create(x,y,screenShake)
shakey.shakeX = 60
shakey.shakeY = 60

if instance_exists(bangjet)
&& room = rBLBNorthEast
{
testHQR.image_index = 1
bangjet.TNTEscape = false
}

instance_destroy(schubkarre)
instance_destroy(conBangTNTEscape)
instance_destroy(objarial)
instance_destroy(dialogbox)

instance_destroy()
}


//On Conveyor Belt------------------------------------------------
band = instance_place(x,y+1,conveyorBelt)

if place_meeting(x,y+1,band)
{
hspeed = band.dir
}

//Hit Wall------------------------------------------------------------
wall = instance_place(x-1,y,TNTBarricade)

if place_meeting(x-1,y,wall)
&& wall.open = false
{
hspeed = 0
}


karre = instance_place(x-1,y,objMovingPlatform)

//In Schubkarre
if place_meeting(x,y+1,karre)
{
x = karre.x+32
y = karre.y-64
gravity = 0
vspeed = 0
global.TNTinKarre = true
}


band = instance_place(x,y+1,conveyorBelt)

//Freier Fall!
if !place_meeting(x,y+1,band)
&& !place_meeting(x,y+1,pistonV)
&& !place_meeting(x,y+1,objMovingPlatform)
&& !place_meeting(x,y+1,objBlockInvis)
{
hspeed = 0
gravity = 0.2
}

else
{
gravity = 0
}

