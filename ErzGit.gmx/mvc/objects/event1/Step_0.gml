//global.sevent ist die Variable die trackt welche events gemacht wurden.
//0 = nicht gefunden
//1 = gefunden
//2 = gelöst


if global.sevent[1] = 2 
{
image_index = 1
farbe = c_white
if once = 0
{
eventcount.cleared += 1
once = 1
}
}

if global.sevent[2] = 2 
{
image_index = 1
farbe = c_white
if once = 0
{
eventcount.cleared += 1
once = 1
}
}

if global.sevent[3] = 2 
{
image_index = 1
farbe = c_white
if once = 0
{
eventcount.cleared += 1
once = 1
}
}

if global.sevent[13] = 2 
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

