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
x = lizzyx+32
}

if image_xscale < 0
{ 
x = lizzyx-32
}


y = lizzyy+20


if !place_meeting(x,y,objBlock)
and !place_meeting(x,y,objBlockInvis)
and !place_meeting(x,y,objSlopeDownLeft)
and !place_meeting(x,y,objSlopeDownRight)
{
turn = 1
}

