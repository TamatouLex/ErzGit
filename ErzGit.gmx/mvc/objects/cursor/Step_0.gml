

if !instance_exists(pausescreen)
{
instance_destroy()
}


if (scrButtonCheckPressed(global.shootButton))
{
if place_meeting(x,y,stoneitem)
{
global.curweapon = 0
}

if place_meeting(x,y,knifeitem)
{
global.curweapon = 1
}

}

