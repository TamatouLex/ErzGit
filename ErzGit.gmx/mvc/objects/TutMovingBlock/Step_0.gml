/// @description Pusher von Links
if kind = 0
{

//Nach links an die Wand
if phase = 1
{
if image_angle < 90
{
image_angle += 2
}

if x > 32
{
x -= 2
}

//Phase 1 geschafft
if x <= 32
{
phase = 2
}

}
//PHASE 2: NACH UNTEN
if phase = 2
{
if y < 576
{
y += 2
}

//Phase 2 geschafft
else
{
phase = 3
}
}

//Phase 3: Closing in on you
if phase = 3
{
if x < 352
{
hspeed = 2
}
else
{
hspeed = 0
}
}

}



///Pusher von Rechts
if kind = 1
{
image_xscale = -1

//Nach rechts an die Wand
if phase = 1
{
if image_angle > -90
{
image_angle -= 2
}

if x < 768
{
x += 2
}

//Phase 1 geschafft
if x >= 768
{
phase = 2
}

}
//PHASE 2: NACH UNTEN
if phase = 2
{
if y < 576
{
y += 2
}

//Phase 2 geschafft
else
{
phase = 3
}
}

//Phase 3: Closing in on you
if phase = 3
{
if x > 448
{
hspeed = -2
}
else
{
hspeed = 0
}
}
}



///Spawn Blocks Rechts

if kind = 3
&& phase = 1
&& iR < 10
&& objPlayer.y > 515
{
count += 1
if count = 2
{
iR+=1
instance_create(x+(32*iR),y,TutSpawningBlock)
instance_create(x-(32*iR),y,TutSpawningBlock)
count = 0
}
}


///Spawn Blocks Links

if kind = 2
&& phase = 1
&& iL < 10
&& objPlayer.y > 515
{
count += 1
if count = 2
{
iL+=1
instance_create(x-(32*iL),y,TutSpawningBlock)
instance_create(x+(32*iL),y,TutSpawningBlock)
count = 0
}
}


