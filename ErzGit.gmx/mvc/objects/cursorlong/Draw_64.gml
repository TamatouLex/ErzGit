draw_self()

x = 200*choice
y = 0

if keyboard_check_pressed(vk_left)
and choice > 0
{
choice -= 1
}

if keyboard_check_pressed(vk_right)
and choice < 3
{
choice += 1
}


if keyboard_check_pressed(vk_down)
{
instance_destroy()
if instance_exists(stoneitem)
{
instance_create(x,y,cursor)
}
else if instance_exists(eventcount)
{
instance_create(x,y,cursorevents)
}
else
{
instance_create(x,y,cursorsave)
}

}

