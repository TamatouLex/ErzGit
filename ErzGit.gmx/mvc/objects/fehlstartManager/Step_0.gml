//INITIATE RUN
if instance_exists(objPlayer)
{
if objPlayer.y > 160
&& objPlayer.x < 700
{
go = true
regenbogenAuto.hspeed = -3
}
}

//COUNT ACTIVE
if go = true
{
count += 1
}


//MAGIC BONE
if count = 250
{
mrPeanut.hspeed = 3
sound_play(sd_magicBone)
}

//Mr. MAGOO
if count = 500
{
mrMagoo.hspeed = -3
sound_play(sd_rauda)
}

//Red Car
if count = 750
{
redCar.hspeed = 3
sound_play(sd_redCar)
}

//Spawn Traffy Room
if count= 900
{
instance_create(752,368,traffyRoom)
}



