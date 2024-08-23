//Turn
if keyboard_check_pressed(vk_pagedown)
{
turn += 100
}

if keyboard_check_pressed(vk_pageup)
{
turn -= 100
}

//Length
if keyboard_check_pressed(vk_f7)
{
length += 0.5
}

if keyboard_check_pressed(vk_f8)
{
length -= 0.5
}

/*
//Paralax
if keyboard_check_pressed(vk_f5)
{
paralax += 0.5
}
*/
if keyboard_check_pressed(vk_f6)
{
paralax -= 0.5
}


//Drehung
image_xscale = (length + (((__view_get( e__VW.XView, 0 )+400)-(room_width/2)))/turn) / 4
//Paralax
x = room_width/2 + (((__view_get( e__VW.XView, 0 )+400)-(room_width/2)))/paralax

if image_xscale <= 0
{
visible = false
}

else
{
visible = true
}

image_yscale = 1

/* */
/*  */
