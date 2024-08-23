//Globale Zeit
global.framecount += 1

if global.framecount > 49
{
global.framecount = 0
global.sec += 1
}
if global.sec > 59
{
global.sec = 0
global.minute += 1
}
if global.minute > 59
{
global.minute = 0
global.hour += 1
}

