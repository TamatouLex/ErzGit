//Links
if no = 1
{
x = (testHQL.x-testHQL.image_xscale*512)//-64
}


//Mitte
if no = 2
{
x = testHQL.x
}


//Rechts
if no = 3
{
x = (testHQR.x+testHQR.image_xscale*512)//+64
}

//Hinten
if no = 4
{
//x = testHQL.x+(view_xview/3)
x = testHQL.x + ((__view_get( e__VW.XView, 0 )+400)-(room_width/2))/2
depth = 900*999
image_xscale = 1
image_yscale = 2
image_blend = make_colour_rgb(150,150,150)
}


/*
//Links (Horizontale
if no = 5
{
x = (HQWall.x-HQWall.image_xscale*64)//+64
}

//Rechts (Horizontale
if no = 6
{
x = (HQWall.x+HQWall.image_xscale*64)//+64
}

/* */
/*  */
