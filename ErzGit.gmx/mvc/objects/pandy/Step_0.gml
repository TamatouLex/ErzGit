if keyboard_check_pressed(vk_rshift)
{
doActions = true
}

if doActions = true
{
count += 1
}


//Walk Left
if count = 10
{
hspeed = 3
}

//Hit Wall
if place_meeting(x+1,y-10,objBlock)
{
hspeed = 0
}

//Jump
if count = 70
{
gravity = 0.3
vspeed = -8
}

//Snapt auf die Platform
if y < objMovingPlatform.y && count < 100
{
y = objMovingPlatform.y
vspeed = 0
gravity = 0
}

//Jump Again
if count = 100
{
gravity = 0.3
vspeed = -8
}


//Landet wieder auf der Platform
if y >= objMovingPlatform.y && count > 150
{
y = objMovingPlatform.y
vspeed = 0
gravity = 0
}

//Startet wieder die Cutscene
if count = 180
{
con=instance_create(x,y,conPandy)
con.go = 20
}



//Encouragement Route
if revolvaDa = true
{
//Revolva Da weg
}

//Other Routes (He Jumps offscreen)
if jumpAway = true
{

}

