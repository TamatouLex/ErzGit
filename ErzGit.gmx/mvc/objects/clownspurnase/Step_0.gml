//Sichtbarkeit
if global.lua = 1
{
visible = true
}
else
{
visible = false
}

if image_xscale > 0
{ 
x = clownx+32
}

if image_xscale < 0
{ 
x = clownx-32
}

if jump = false
{
y = clowny-20
}
else
{
y = clowny+30
}

if place_meeting(x,y,objBlock)
|| place_meeting(x,y,objBlockInvis)
|| place_meeting(x,y,objSlopeDownLeft)
|| place_meeting(x,y,objSlopeDownRight)
{
turn = 1
}




