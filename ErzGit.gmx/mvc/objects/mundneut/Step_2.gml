if mood = 0
{
sprite_index = spr_mundneut
}

else if mood = 1
{
sprite_index = spr_mundsad
}

else if mood = 2
{
sprite_index = spr_mundhap
}

//Weche richtung?
if instance_exists(kidle)
{
image_xscale = kidle.image_xscale
}
if instance_exists(kump)
{
image_xscale = kump.image_xscale
}
if instance_exists(kall)
{
image_xscale = kall.image_xscale
}
if instance_exists(kshoot)
{
image_xscale = kshoot.image_xscale
}



if instance_exists(eyesneut)
{
if eyesneut.image_index = 0
or eyesneut.image_index = 3
or eyesneut.image_index = 4
{
if eyesneut.image_xscale = 1
{
x = eyesneut.x+4
}
if eyesneut.image_xscale = -1
{
x = eyesneut.x-4
}
}

else if eyesneut.image_index = 1
{
if eyesneut.image_xscale = 1
{
x = eyesneut.x+8
}
if eyesneut.image_xscale = -1
{
x = eyesneut.x-8
}
}

else if eyesneut.image_index = 2
{
if eyesneut.image_xscale = 1
{
x = eyesneut.x+12
}
if eyesneut.image_xscale = -1
{
x = eyesneut.x-12
}
}

y = eyesneut.y+10









}

