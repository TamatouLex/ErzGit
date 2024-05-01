//WIRD VON OBJ 7735 UND OBJ 7735 CLIMB AUSGEFÜHRT


//Room Right
if x > room_width
{
room_goto(camera.roomRight);
camera.wentRight = true
}

//Room Left
if x < 0
{
room_goto(camera.roomLeft);
camera.wentLeft = true
}

//Room Down
if y > room_height
{
room_goto(camera.roomDown);
camera.wentDown = true
}

//Room Up
if y < 0
{
room_goto(camera.roomUp)
camera.wentUp = true
}
