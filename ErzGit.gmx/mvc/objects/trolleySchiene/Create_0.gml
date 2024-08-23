visible = false

dir = 0 //0 = left | 1 = right
Frametrap = 0
posSet = false

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

