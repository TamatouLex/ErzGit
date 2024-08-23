countToEnd += 1
if countToEnd = 500
{
room = rFehlstart
}


//Tal Fahrt (No Hill)
if mode = 0
{
TopY = lerp(TopY,0,0.05)
UpperY = lerp(UpperY,0,0.05)
MidY = lerp(MidY,0,0.05)
altitude = lerp(altitude,0,0.05)
trackSpeed = 3
}

//Gerade aus (Back Hill)
if mode = 1
{
TopY = lerp(TopY,64,0.05)
UpperY = lerp(UpperY,0,0.05)
MidY = lerp(MidY,0,0.05)
altitude = lerp(altitude,100,0.05)
trackSpeed = 2
}

//Berg auf aus (Middle Hill)
if mode = 2
{
TopY = lerp(TopY,96,0.05)
UpperY = lerp(UpperY,96,0.05)
MidY = lerp(MidY,0,0.05)
altitude = lerp(altitude,200,0.05)
trackSpeed = 2
}

//Steil Berg auf (Front Hill)
if mode = 3
{
TopY = lerp(TopY,128,0.05)
UpperY = lerp(UpperY,128,0.05)
MidY = lerp(MidY,128,0.05)
altitude = lerp(altitude,300,0.05)
trackSpeed = 1
}




if mode > 3
{
mode = 0
}
if mode < 0
{
mode = 3
}

BGSpeed -= parallax/100

//After Ergo
if parallax >= 0
{
afterErgo = lerp(afterErgo,parallax,0.04)
}

else if parallax < 0
{
afterErgo = lerp(afterErgo,-parallax,0.04)
}


//Background
bgY = altitude


//CONTROLL
if keyboard_check_pressed(ord("S"))
{
mode += 1
}

if keyboard_check_pressed(ord("W"))
{
mode -= 1
}

//CONTROLL
if keyboard_check_pressed(ord("A"))
{
stretch += 1
}

if keyboard_check_pressed(ord("D"))
{
stretch -= 1
}

if keyboard_check(vk_left)
{
parallax -= 0.08
}


if keyboard_check(vk_right)
{
parallax += 0.08
}


if keyboard_check(vk_up)
&& multiply > 0
{
multiply -= 4
}


if keyboard_check(vk_down)
{
multiply += 4
}

///Animation
frameCount += trackSpeed

if frameCount >= 3
&& frameCount < 6
{
sprite_index = spr_schienen1
}

else if frameCount >= 6
&& frameCount < 9
{
sprite_index = spr_schienen2
}

else if frameCount >= 9
{
sprite_index = spr_schienen3
frameCount = 0
}




///Pillar

//FIRST SET-------------------------------------------------------------------------------------------------------------------------------------------
pillarY[0] += trackSpeed
if pillarY[0] > 200//185
{
pillarY[0] = 0
}

pillarAcc[0] += trackSpeed*0.0001
if pillarAcc[0] > 0.0200//0.0185
{
pillarAcc[0] = 0
}

//Lerp Pillars over the Hill


//Hill Back
if pillarY[0] > 0
&& mode = 1
{
TopYP[0] = lerp(TopYP[0],0,0.1)
}

else
{
TopYP[0] = TopY
}

//Mid Hill
if pillarY[0] > 32
&& mode = 2
{
UpperYP[0] = lerp(UpperYP[0],0,0.1)
}

else
{
UpperYP[0] = UpperY
}

//Hill Vorne
if pillarY[0] > 64
&& mode = 3
{
MidYP[0] = lerp(MidYP[0],0,0.1)
}

else
{
MidYP[0] = MidY
}


//SECOND SET-------------------------------------------------------------------------------------------------------------------------------------------
pillarY[1] += trackSpeed
if pillarY[1] > 200
{
pillarY[1] = 0
}

pillarAcc[1] += trackSpeed*0.0001
if pillarAcc[1] > 0.0200
{
pillarAcc[1] = 0
}

//Lerp Pillars over the Hill


//Hill Back
if pillarY[1] > 0
&& mode = 1
{
TopYP[1] = lerp(TopYP[1],0,0.1)
}

else
{
TopYP[1] = TopY
}

//Mid Hill
if pillarY[1] > 32
&& mode = 2
{
UpperYP[1] = lerp(UpperYP[1],0,0.1)
}

else
{
UpperYP[1] = UpperY
}

//Hill Vorne
if pillarY[1] > 64
&& mode = 3
{
MidYP[1] = lerp(MidYP[1],0,0.1)
}

else
{
MidYP[1] = MidY
}

//THIRD SET-------------------------------------------------------------------------------------------------------------------------------------------
pillarY[2] += trackSpeed
if pillarY[2] > 200
{
pillarY[2] = 0
}

pillarAcc[2] += trackSpeed*0.0001
if pillarAcc[2] > 0.0200
{
pillarAcc[2] = 0
}

//Lerp Pillars over the Hill


//Hill Back
if pillarY[2] > 0
&& mode = 1
{
TopYP[2] = lerp(TopYP[2],0,0.1)
}

else
{
TopYP[2] = TopY
}

//Mid Hill
if pillarY[2] > 32
&& mode = 2
{
UpperYP[2] = lerp(UpperYP[2],0,0.1)
}

else
{
UpperYP[2] = UpperY
}

//Hill Vorne
if pillarY[2] > 64
&& mode = 3
{
MidYP[2] = lerp(MidYP[2],0,0.1)
}

else
{
MidYP[2] = MidY
}

//FORTH SET-------------------------------------------------------------------------------------------------------------------------------------------
pillarY[3] += trackSpeed
if pillarY[3] > 200
{
pillarY[3] = 0
}

pillarAcc[3] += trackSpeed*0.0001
if pillarAcc[3] > 0.0200
{
pillarAcc[3] = 0
}

//Lerp Pillars over the Hill


//Hill Back
if pillarY[3] > 0
&& mode = 1
{
TopYP[3] = lerp(TopYP[3],0,0.1)
}

else
{
TopYP[3] = TopY
}

//Mid Hill
if pillarY[3] > 32
&& mode = 2
{
UpperYP[3] = lerp(UpperYP[3],0,0.1)
}

else
{
UpperYP[3] = UpperY
}

//Hill Vorne
if pillarY[3] > 64
&& mode = 3
{
MidYP[3] = lerp(MidYP[3],0,0.1)
}

else
{
MidYP[3] = MidY
}

