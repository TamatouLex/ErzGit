//Fliegt weg
if go = true
{
gravity = 0.1
gravity_direction = 90
}

else if gravityMode = false
{
//Auf und ab Schweben
if y > targetY
{
vspeed -= 0.3
}

else if y < targetY
{
vspeed += 0.3
}

//LIMITS
if vspeed > 3
{
vspeed = 3
}
else if vspeed < -3
{
vspeed = -3
}
}


//HSPEED LIMITS
if gravityMode = false
{
if hspeed > maxHspeed
{
hspeed = maxHspeed
}
else if hspeed < -maxHspeed
{
hspeed = -maxHspeed
}
}


//BLBHof 3! DUAL LIGHTS
if room = rBLBHof3
{
//Iteriert in jeder Frame durch alle Lights
for(i=0;i<spotlightManager.maxLights;i+= 1)
{
//Wenn eines davon active ist wird es zu seinem Target
if instance_exists(light[i])
{
//Wenn das Light Aktiv ist will er hin!
if light[i].active = true
{
targetLight = light[i] 
speed = 4
direction = point_direction(x,y,targetLight.x,targetLight.y)
}
}
}

image_angle = direction + 270
}

//CLONE BOSS-----------------------------------------------------------
if room = rBLBHofClone
{
gravityMode = true
//Wenn eines davon active ist wird es zu seinem Target
if instance_exists(light[0])
{
//Wenn das Light Aktiv ist will er hin!
if light[0].active = true
{
gravity = 0.2
gravity_direction = point_direction(x,y,light[0].x,light[0].y)
}
else
{
gravity_direction = point_direction(x,y,room_width/2,100)
}
}

//OUT OF BOUNDS PREVENTION
if y < 0
{
vspeed += 0.2
}

//SPEED LIMIT
if speed > 7
{
speed = 7
}

image_angle = direction + 270
}


//BLB Door Sprengen Scene
if room = rBLBNorthEast
&& instance_exists(schubkarre)
&& instance_exists(obj7735)
{

if TNTEscape = false
&& goTo7735 = false
{
if x > obj7735.x+200
{
hspeed -= 0.5
}

if x < obj7735.x+200
{
hspeed += 0.5
}
}

//Flieht vor TNT
else if TNTEscape = true
{
if x > 500
{
hspeed -= 0.5
}

if x < 500
{
hspeed += 0.5
}
}

}

//Bang post explosion Cutscene
if room = rBLBNorthEast
&& instance_exists(obj7735)
&& goTo7735 = true //Wird aktiviert im Destroy vom Screenflash
{
if x > obj7735.x+10
{
hspeed -= 0.5
}

if x < obj7735.x+10
{
hspeed += 0.5
}
if distance_to_object(obj7735) < 100
{
instance_create(x,y,conBangPostTNT)
hspeed = 0
goTo7735 = false
}
}

//Bang flog ins HQ rein
if room = rBLBNorthEast
&& instance_exists(obj7735)
&& y < -20
{
instance_create(x,y,conBangFlogRein)
instance_destroy()
}

