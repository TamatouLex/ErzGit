if pause = 0
{
instance_deactivate_all(true)
instance_activate_object(timemaster)
instance_create(x,y,pausescreen)
pause = 1
}

else if pause = 1
{
instance_activate_all()
pause = 0
}

