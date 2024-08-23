if kind = 1
{
warpY = obj7735.y
}

else if kind = 2
{
warpX = obj7735.x
}


if (warpX == 0 && warpY == 0)
{
    with(obj7735)
        instance_destroy();
}
else
{
    obj7735.x = warpX;
    obj7735.y = warpY;
    camera.x = warpX;
    camera.y = warpY;

}

room_goto(roomTo);

with (other) {
y -= 1

}
