//global.sevent ist die Variable die trackt welche events gemacht wurden.
//0 = nicht gefunden
//1 = gefunden
//2 = gelöst

if global.sbevent[1] = 2
{
image_index = 1
farbe = c_white
if once = 0
{
eventcount.cleared += 1
once = 1
}
}

if global.sbevent[2] = 2
{
image_index = 1
farbe = c_white
if once = 0
{
eventcount.cleared += 1
once = 1
}
}



if !instance_exists(eventcount)
{
instance_destroy()
}

