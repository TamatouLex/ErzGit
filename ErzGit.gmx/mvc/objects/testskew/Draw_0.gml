//Mittellinie
//draw_line_colour(400,0,400,700,c_red,c_red)
/*
draw_text(200,100,"Skew: " +string(skew))
draw_text(200,200,"Shift: " +string(shift))
draw_text(200,300,"Shift Increase: " +string(shiftinc))
draw_text(200,400,"Skew Increase: " +string(skewinc))

*/

depth = -1


if room = r3DTest
{
draw_sprite_pos(spr_3DFloor2, 0, -200+shift, 500, 1000+shift, 500, 1000+skew+shift, 600, -200+skew+shift, 600, 1);
}

else
{
draw_sprite_pos(spr_3DFloorWood, 0, __view_get( e__VW.XView, 0 )-200+shift, 576, __view_get( e__VW.XView, 0 )+1000+shift, 576, __view_get( e__VW.XView, 0 )+1000+skew+shift, 608, __view_get( e__VW.XView, 0 )-200+skew+shift, 608, 1);
}

/* */
/*  */
