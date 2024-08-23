if kind = 1
{
warpY = obj7735climb.y
}

else if kind = 2
{
warpX = obj7735climb.x
}


if (warpX == 0 && warpY == 0)
{
    with(obj7735climb)
        instance_destroy();
}
else
{
    obj7735climb.x = warpX;
    obj7735climb.y = warpY;
    camera.x = warpX;
    camera.y = warpY;

}

room_goto(roomTo);

