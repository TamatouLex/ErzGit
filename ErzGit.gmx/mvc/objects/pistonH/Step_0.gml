//Activation
if pistonV.curHeight >= pistonV.maxHeight
{
active = true
}


if active = true && curHeight < maxHeight
{
x += 4
curHeight += 4

//Nimmt TNT mit
if place_meeting(x-1,y,BigTNT99)
{
BigTNT99.x += 4
}
}

