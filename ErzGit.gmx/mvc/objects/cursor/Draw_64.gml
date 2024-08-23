draw_self()

x = posx
y = posy

if keyboard_check_pressed(vk_left)
{
posx -= 64
}

if keyboard_check_pressed(vk_right)
{
posx += 64
}

if keyboard_check_pressed(vk_up)
{
if y = 144
{
instance_destroy()
instance_create(x,y,cursorlong)
}
else
{
posy -= 96
}
}

if keyboard_check_pressed(vk_down)
{
posy += 96
}

