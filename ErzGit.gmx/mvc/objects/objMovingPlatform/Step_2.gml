/// @description Twist Functionality
if isTwistPlatform = true
{

player = instance_place(x,y-1,obj7735)

if place_meeting(x,y-1,player)
{
//Wenn player ganz rechts auf der Platform ist, wird er nach links geschickt
if player.x > x+sprite_width-10
{
twistDir = -1
}
else if player.x < x+10
{
twistDir = 1
}

player.x += twistSpeed * twistDir
}
}

///Carry Functionality
if isCarry = true
{
count += 1
if count = 20
{
instance_destroy()
}
}

