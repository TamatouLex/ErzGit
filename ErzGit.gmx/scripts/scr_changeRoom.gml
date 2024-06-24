//WIRD VON OBJ 7735 UND OBJ 7735 CLIMB AUSGEFÜHRT

if canLeaveRoom = true
{
//Room Right
if x > room_width
{
y = y - (608*camera.rightLane) //Lane Correction
camera.rightLane = 0
camera.leftLane = 0
room_goto(camera.roomRight);
camera.wentRight = true
}

//Room Left
else if x < 0
{
y = y - (608*camera.leftLane) //Lane Correction
camera.rightLane = 0
camera.leftLane = 0
room_goto(camera.roomLeft);
camera.wentLeft = true
}

//Room Down
else if y > room_height
{
x = x - (800*camera.downLane) //Lane Correction
camera.downLane = 0
camera.upLane = 0
room_goto(camera.roomDown);
camera.wentDown = true
}

//Room Up
else if y < 0
{
x = x - (800*camera.upLane) //Lane Correction
camera.upLane = 0
camera.downLane = 0
room_goto(camera.roomUp);
camera.wentUp = true
}
}

//KANN RAUM NICHT VERLASSEN
else
{
if x < 15
{
grounded = false
x = 15
y -= 1
momentum = 5
}

else if x > room_width-15
{
grounded = false
x = room_width-15
y -= 1
momentum = -5
}

}
