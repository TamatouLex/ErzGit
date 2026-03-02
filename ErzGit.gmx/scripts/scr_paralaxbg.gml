//Initialize Background Offset

if initialOffset = false
{
/*
if camera.x < 400
{
background_x[0] = view_xview/1.1
background_x[1] = view_xview/1.9
background_x[2] = 200+view_xview/2.2
}
*/

if camera.x > room_width-400
{
background_x[0] = view_xview/1.1
background_x[1] = view_xview/1.9
background_x[2] = 200+view_xview/2.2
}

initialOffset = true
}

//Paralax
if camera.x > 400
&& camera.x < room_width-400
{
background_x[0] = view_xview/1.1
background_x[1] = view_xview/1.9
background_x[2] = view_xview/2.2
}


/*
if room = rDwald
{
background_y[0] = view_yview
}
