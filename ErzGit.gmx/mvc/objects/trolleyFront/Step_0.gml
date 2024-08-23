


if jump = 1
{
phase = 99
y = ystart-10
vspeed = -10
gravity = 0.4
jump = 2
image_angle = 0

}

if y > ystart && jump = 2
{
jump = 0
vspeed = 0
gravity = 0
y = ystart
phase = 2
}

//Funken sprühen
/*
if phase = 1
{
funkenCount += 1
funkBigness = 1
}
else if phase = 2
{
funkenCount += 5
funkBigness = 2
}

if funkenCount >= 5
{
a=instance_create(x-30,y+40,funke)
a.depth = -2
a.direction = random_range(90,180)
a.image_xscale = irandom_range(0.5,1*funkBigness)
a.image_yscale = random_range(0.2,0.3*funkBigness)
a.speed = irandom_range(2,4*funkBigness)

b=instance_create(x+30,y+40,funke)
b.depth = -2
b.direction = random_range(0,90)
b.image_xscale = irandom_range(0.5,1*funkBigness)
b.image_yscale = random_range(0.2,0.3*funkBigness)
b.speed = irandom_range(2,4*funkBigness)

funkenCount = 0
}

*/



if phase = 1
{
image_angle = (point_direction(pillarMaker.x,pillarMaker.y,x,y))+90

if x > pillarMaker.x
{
x-= 1
}

else if x < pillarMaker.x
{
x+= 1
}



}

if phase = 2
{

//Trolley shakes up and down
y = ystart+irandom_range(-2,2)


//Direction
//Go Left
if x < pillarMaker2.x
{
hspeed += 0.4
if hspeed > 6
{
hspeed = 6
}
}
//Go Right
if x > pillarMaker2.x
{
hspeed -= 0.4
if hspeed < -6
{
hspeed = -6
}
}
}

/* */
/*  */
