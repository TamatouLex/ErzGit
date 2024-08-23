draw_self()

x = 32+(256*choice)
y = 160

if keyboard_check_pressed(vk_left)
and choice > 0
{
choice -= 1
}

if keyboard_check_pressed(vk_right)
and choice < 2
{
choice += 1
}


if keyboard_check_pressed(vk_up)
{
instance_destroy()
instance_create(x,y,cursorlong)
}



global.savenum = choice+1


