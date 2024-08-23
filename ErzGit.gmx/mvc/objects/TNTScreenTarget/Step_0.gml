x = xstart +hSpot*96
y = ystart +vSpot*96

if hit = true
{
progress += 1
sound_play(sndGlass)
previousPosH = hSpot
previousPosV = vSpot

hSpot = irandom(2)
vSpot = irandom(2)
hit = false
}


//Reshuffle wenn es die selbe Pos ist
if previousPosH = hSpot
&& previousPosV = vSpot
{
previousPosH = hSpot
previousPosV = vSpot

hSpot = irandom(2)
vSpot = irandom(2)
}


//Remove Barricades
//BARRICADE 1
if progress = 1
{
with(TNTBarricade)
{
if kind = 7
{
open = true
}
}
}

//BARRICADE 2
else if progress = 2
{
with(TNTBarricade)
{
if kind = 8
{
open = true
}
}
}

//BARRICADE 3
else if progress = 3
{
with(TNTBarricade)
{
if kind = 9
{
open = true
}
}
}

//BARRICADE 4
else if progress = 4
{
with(TNTBarricade)
{
if kind = 10
{
open = true
}
}
instance_destroy()
}

