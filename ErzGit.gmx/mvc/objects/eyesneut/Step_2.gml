//Mood
if mood = 0
{
sprite_index = spr_eyesneut
}

if mood = 1
{
sprite_index = spr_eyesmoody
}



//Idle
if instance_exists(kidle)
{
image_xscale = kidle.image_xscale
image_index = 0
if kidle.image_index = 0
or kidle.image_index = 1
or kidle.image_index = 2
{
x = kidle.x
y = kidle.y-40
}



if kidle.image_index = 3
{
x = kidle.x
y = kidle.y-34
}
}

//Jump
else if instance_exists(kump)
{
image_xscale = kump.image_xscale
image_index = 3
if kump.image_index = 0
or kump.image_index = 1
or kump.image_index = 2
{
x = kump.x
y = kump.y-40
}
}

//Fall
else if instance_exists(kall)
{
image_xscale = kall.image_xscale
image_index = 4
if kall.image_index = 0
or kall.image_index = 1
or kall.image_index = 2
{
x = kall.x
y = kall.y-45
}
}



//Shoot
else if instance_exists(kshoot)
{
image_xscale = kshoot.image_xscale
image_index = 0
//Normal Head
if kshoot.image_index = 0
{
image_index = 0
if image_xscale = 1
{
x = kshoot.x+4
}
if image_xscale = -1
{
x = kshoot.x-4
}
y = kshoot.y-40
}
//Slight Head Turn
else if kshoot.image_index = 1
{
image_index = 1
x = kshoot.x
y = kshoot.y-40
}
//Full Head Turn
else if kshoot.image_index = 2
{
image_index = 2
x = kshoot.x
y = kshoot.y-40
}
}

//Run
else if instance_exists(krun)
{
image_xscale = krun.image_xscale
hspeed = krun.hspeed
//Normal Head
if krun.image_index = 0
or krun.image_index = 1
or krun.image_index = 2
{
image_index = 0
if image_xscale = 1
{
x = krun.x+4
}
if image_xscale = -1
{
x = krun.x-4
}
y = krun.y-40
}
//Slight Head Turn
if krun.image_index = 3
or krun.image_index = 7
{
image_index = 1
x = krun.x
y = krun.y-40
}
//Full Head Turn
if krun.image_index = 4
or krun.image_index = 5
or krun.image_index = 6
{
image_index = 2
x = krun.x
y = krun.y-40
}


}









else
{
x = 0
y = 0
}

