//WIRD VON OBJ 7735 AUSGEFÜHRT

//Room Right
if x > room_width
{
room_goto(roomRight);
obj7735.x = 0
}

//Room Left
if x < 0
{
//room_goto(roomLeft);
room = roomLeft
wentLeft = true
}

//Room Down
if y > room_height
{
warpX = obj7735.x
room_goto(roomDown);
}

/*
    obj7735.x = warpX;
    obj7735.y = warpY;
    camera.x = warpX;
    camera.y = warpY;

