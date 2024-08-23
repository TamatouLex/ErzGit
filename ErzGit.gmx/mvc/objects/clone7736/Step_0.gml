//Dash Countdown
dashCountdown -= 1

//Jetzt passierts!
if waitTime >= 35
{
waitTime = 0


//Wenn das Licht an ist, will er hin!!
if light.active = true
{
state = 8
}
//Dash Punch wenn die Zeit gekommen ist
else if dashCountdown <= 0
{
state = 6
}

//Ansonsten literally anything else
else
{
state = irandom_range(1,5)
}
}

//STATE 0: DO NOTHING AKA WAIT-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
if state = 0
{
waitTime += 1
//Dreht sich zum Player
if x > obj7735.x
{
image_xscale = -1
}
else
{
image_xscale = 1
}
}

//STATE 1: TRIPLE SHOT-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 1
{
//Go Into Wind up animation
chargeTime += 1
//Shoot
if chargeTime >= 30
{
shot1=instance_create(x,y,cloneShot)
shot1.image_xscale = image_xscale*8

shot2=instance_create(x,y,cloneShot)
shot2.image_xscale = image_xscale*8

shot3=instance_create(x,y,cloneShot)
shot3.image_xscale = image_xscale*8

//Triple Shot Pattern
triplePattern = irandom(2)
switch(triplePattern)
{
//Jump Over 2
case 0:
shot1.heightMax = 0
shot2.heightMax = 100
shot3.heightMax = 300
break;

//Jump Over 1
case 1:
shot1.heightMax = 0
shot2.heightMax = 200
shot3.heightMax = 300
break;

//Go Under
case 2:
shot1.heightMax = 100
shot2.heightMax = 200
shot3.heightMax = 300
break;

}


//Who is the Shot Leader?
shot1.leader = shot3
shot2.leader = shot3
shot3.leader = shot3

chargeTime = 0
state = 0
}

}


//STATE 2: BIG SHOT-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 2
{
//Wenn nicht eh schon 2 Bullets on Screen sind
if instance_number(cloneBigShot) < 2
{
//Go Into Wind up animation
chargeTime += 1
//Shoot
if chargeTime >= 30
{
bShot = instance_create(x,y,cloneBigShot)
bShot.hspeed = image_xscale
chargeTime = 0
state = 0
}
}
//Ansonsten Walkt er
else
{
state = 5
}


}

//STATE 3: JUMP-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 3
{
if hspeed = 0
&& vspeed = 0
{
vspeed = -12
gravity = 0.4

//Sprung nach Rechts
if x < room_width/2
{
hspeed = 5
}
//Sprung nach Links
else
{
hspeed = -5
}
}
}

//STATE 4: TAUNT-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 4
{
tauntTime += 1
if tauntTime = 20
{
tauntTime = 0
state = 0
}
}

//STATE 5: WALK-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 5
{

if walkDir = 0
{
hspeed = -4
}
else
{
hspeed = 4
}


walkTime += 1
if walkTime >= 30
{
hspeed = 0
walkDir = irandom(1)
state = 0
walkTime = 0
}

}


//STATE 6: SUPER PUNCH-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 6
{
chargeTime += 1
dashDuration += 1
//BLAST OFF
if chargeTime = 30
{
hspeed = 5 * image_xscale
}

//HE FOLLOWS YOU
if chargeTime > 30
{
//Accelerate Left
if x > obj7735.x
&& hspeed > -maxDashSpeed
{
hspeed -= 0.6
}
//Accelerate Right
else if x < obj7735.x
&& hspeed < maxDashSpeed
{
hspeed += 0.6
}
}

//Einbremsen
if dashDuration >= dashDurationMax
|| light.active = true
{
hspeed *= 0.5
//Wenn er zum Stillstand kommt
if hspeed < 1
&& hspeed > -1
{
sound_play(sndBlockChange)
dashDuration = 0
hspeed = 0
//Licht brennt also geht er hin
if light.active = true
{
state = 8
}
//Kein Licht Brennt also ist er tired
else
{
state = 7
}
chargeTime = 0
dashCountdown = irandom_range(600,900)
}

}



}


//STATE 7: TIRED-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 7
{
hspeed = 0
tiredCount += 1
if tiredCount >= tiredCountMax
{
state = 0
tiredCount = 0
}
}

//STATE 8: GO TO THE LIGHT-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 8
{
if light.active = true
{
//Go Right
if x < light.x -3
{
hspeed = 6
}

//Go Left
if x > light.x +3
{
hspeed = -6
}

//He is underneath and needs to Jump now
if x > light.x - 3
&& x < light.x + 3
{
hspeed = 0
jumpWindup += 1
if jumpWindup = 10
{
vspeed = -12
gravity = 0.4
}
}
}

//Wenn das Licht aus ist wird er wieder normal
else
{
state = 0
}

//Wenn der Player schneller ist dann geht er in seinen Weglauf State
if instance_exists(obj7735)
&& obj7735.dance = true
{
state = 10 //Run Away
}

}


//STATE 9: LAND-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 9
{


landCount += 1
if landCount >= 10
{
landCount = 0
state = 0
}
}


//STATE 10: RUN AWAY WHEN 7735 DANCES-------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
else if state = 10
{
//Go Right
if obj7735.x < room_width/2
{
hspeed = 6
}

//Go Left
if obj7735.x > room_width/2
{
hspeed = -6
}

//Wenn das Licht aus ist wird er wieder normal
if instance_exists(obj7735)
&& obj7735.dance = false
{
state = 0
}

}

//LANDING FROM A JUMP---------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------------------------------
//Landing
if vspeed > 0
&& place_meeting(x,y,objBlockInvis)
{
y = ystart
vspeed = 0
hspeed = 0
gravity = 0
state = 9
jumpWindup = 0 //Resettet Jump Windup Timer
}


//Kann nicht Out of Bounds gehen//------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------
if x > 780
{
hspeed = 0
x = 780
walkDir = 0 //Force Walk Left
}

if x < 20
{
hspeed = 0
x = 20
walkDir = 1 //Force Walk Right
}

