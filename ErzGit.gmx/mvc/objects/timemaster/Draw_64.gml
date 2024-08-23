
//draw_text(100,20,global.framecount)
if global.hour < 10
{
dishour = "0"+string(global.hour)
}
else
{
dishour = global.hour
}
if global.minute < 10
{
disminute = "0"+string(global.minute)
}
else
{
disminute = global.minute
}

if global.sec < 10
{
dissec = "0"+string(global.sec)
}
else
{
dissec = global.sec
}

/*

draw_text(100,50,"Time: "+string(dishour)+":"+string(disminute)+":"+string(dissec))

/* */
/*  */
