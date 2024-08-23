visible = false
image_speed = 0
image_alpha = 0

Frametrap = 0



speedOverall = 4
size = 0.1

reachedHorizon = false

//Über Horizon geboren
if y <= trolleyHorizon.y
{
vspeed = speedOverall
horiOffset = 0
hugel = false
}
//Unter Horizon geboren
else if y > trolleyHorizon.y
{
vspeed = -speedOverall
horiOffset = y - trolleyHorizon.y
hugel = true
}


strecke = (room_height-ystart) +(horiOffset*2)
streckeTraveled = 0

