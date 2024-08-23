//Paralax
__background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 )/1.1 )
__background_set( e__BG.X, 1, __view_get( e__VW.XView, 0 )/1.9 )
__background_set( e__BG.X, 2, 200+__view_get( e__VW.XView, 0 )/2.2 )

if room = rDwald
{
__background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 ) )
}
