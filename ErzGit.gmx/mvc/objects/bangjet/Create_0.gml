if room = rDbang
&& global.sevent1 != 0
{
instance_destroy()
}

go = false //Fliegt nach oben weg
gravityMode = false //Wenn true wird er nur durch Gravity gesteuert
image_speed = 0.1


targetY = ystart+4 //In welcher Höhe er fliegen soll

maxHspeed = 5

//Cutscene Events
TNTEscape = false
goTo7735 = false

//BLBHof Lights
if room = rBLBHof3
{
targetLight = noone
for (i = 0;i<16;i+=1)
{
light[i] = noone
}
}

//BLBHof Lights
if room = rBLBHofClone
{
light[0] = noone
}

