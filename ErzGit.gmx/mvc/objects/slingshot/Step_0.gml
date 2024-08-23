arm.x = x
arm.y = y

if active = true
&& shot = false
{
hspeed = -3
image_speed = 0.2


//Dings spannen
if (scrButtonCheck(global.jumpButton))
&& shot = false
{
arm.image_angle -= 1
shotPower += 0.5
}
}

//SHOT HAPPENS
if (scrButtonCheckReleased(global.jumpButton))
&& shot = false
&& active = true
{
shot = true
}



//FAIL: ZUVIEL GESPANNT
if arm.image_angle < -90
{
shot = true
shotPower = 5
}




//SHOT!!!
if shot = true
{
//Animation First
if arm.image_angle < 30
{
arm.image_angle += 20
}
//Then he spawns the Player
else
{
maxi=instance_create(x-30,y-60,playerLaunched)
maxi.hspeed = -2-shotPower/1.2
maxi.vspeed = -2-shotPower/6
shot = false
active = false
hspeed = 0
}
}








/*Meine 10 Lieblingsserien
Smiling Friends
Over The Garden Wall
Steven Universe
Xaview Renegade Angel
Sailor Moon
Molcar
Aqua Teen Hunger Forfce (number 1 in the hood G)
Spongebob Season 1 bis 3
MLP Season 1 bis 3
The Laughing Salesman
Evangelion
Panty & Stocking
PaRappa Anime

 
 
 
 

/* */
/*  */
