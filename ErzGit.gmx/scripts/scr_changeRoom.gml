//WIRD VON OBJ 7735 UND OBJ 7735 CLIMB AUSGEFÜHRT


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
room_goto(camera.roomDown);
camera.wentDown = true
}

//Room Up
else if y < 0
{
room_goto(camera.roomUp)
camera.wentUp = true
}
