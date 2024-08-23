//Hat er zement?
if hasCement = true
{
image_index = 1
}
else
{
image_index = 0
}


//Not GRABBED
if isGrabbed = false
{
image_blend = make_colour_rgb(255,255,200)
with(grabbi)
{
if place_meeting(x,y,obj7735)
{
//Grab it!
if (scrButtonCheckPressed(global.shootButton))
&& !instance_exists(conBangTNTEscape)
{
obj7735.pushObject = id
obj7735.isPushing = true
host.isGrabbed = true
}

}
} //With Grabbi End



}


//GRABBED
if isGrabbed = true
{
count += 1
image_blend = make_colour_rgb(255,200,255)


//Cart lerped zu player (potentially umgekehrt machen)
if count < 5
&& hitWall = false
{
x = lerp(x,obj7735.x+offset,0.8)
}

//Nun kann er sich bewegen
if count >= 5 
&& instance_exists(obj7735)
{
x = obj7735.x + offset
y = obj7735.y + yOffset


if obj7735.isOnSlope = true
{
y = obj7735.y + yOffset +20
}

}


//Let go
if ((scrButtonCheckPressed(global.shootButton))
|| (scrButtonCheckPressed(global.jumpButton))
|| instance_exists(conBangTNTEscape))
&& count > 5
&& instance_exists(obj7735)
{
in.hasCement = false
hasCement = false //Ausschüt animation muss noch geadded werden
obj7735.isPushing = false
//Löst potentielle blockierungen
obj7735.rightBlock = false
obj7735.leftBlock = false
isGrabbed = false
count = 0
}
}


//Platform
//platform.x = x
//platform.y = y+platformYOffset

//WallRay
ray.x = x+85
ray.y = y+15

//Grabbi
grabbi.x = x+grabOffsetX
grabbi.y = y

//IN
in.x = x+15 * image_xscale
in.y = y-20
in.image_angle = image_angle


//TNT Cutscene
if room = rBLBNorthEast
&& x > 2800
&& !instance_exists(conBangTNTEscape)
{
instance_create(x,y,conBangTNTEscape)
}


///Lift Interaction
lift = instance_place(x,y+2,objMovingPlatform)

if place_meeting(x,y+2,lift)
&& lift.isWeightLift = true
&& hasCement = true
{
sound_play(sndBlockChange)
lift.vspeed = 1
}

///Slope Interaction

slopeL = instance_place(x-60,y+6,objSlopeDownLeft)

//if place_meeting(x-60,y+4,objSlopeDownLeft)
if place_meeting(x-60,y+6,slopeL)
{
isGrounded = true
image_angle = lerp(image_angle,-25,0.3)

//Free Minecart
if isGrabbed = false
{
hspeed += 0.2
//Drückt ihn runter auf die Slope wenn er sich davon entfernt
if y < slopeL.y-4
{
scr_debug()
y += 1*(hspeed/2)
}

}

//SchubMinecart
else
{
obj7735.momentum += 0.1
}

}

else
{
hspeed *= 0.99
image_angle = lerp(image_angle,0,0.3)
}


//platform.hspeed = hspeed


///Player gets IN

if instance_exists(obj7735)
&& obj7735.vspeed > 2
&& obj7735.inMinecart = false
&& hasCement = false
{
with(minecartIN)
{
if place_meeting(x,y,obj7735)
{
obj7735.hspeed = 0
obj7735.inMinecart = true
obj7735.minecartID = id
}
}
}

//Player gets OUT
if obj7735.inMinecart = true
&& (scrButtonCheckPressed(global.jumpButton))
&& (scrButtonCheck(global.upButton))
{
obj7735.vspeed = -10
obj7735.inMinecart = false
instance_create(obj7735.x,obj7735.y,kump)
instance_create(obj7735.x,obj7735.y,lump)
instance_destroy(kMinecart)
}

//JUMP WITH MINECART
if obj7735.inMinecart = true
&& (scrButtonCheckPressed(global.jumpButton))
&& isGrounded = true
{
vspeed = -10
isGrounded = false
y -= 3
}



///Gravity & Grounded
blocc = instance_place(x,y+2,objBlockInvis)
if place_meeting(x,y+2,blocc)
{
y = blocc.y-36
}




if !place_meeting(x,y+2,objBlockInvis)
&& !place_meeting(x,y+2,objSlopeDownLeft)
&& !place_meeting(x,y+2,objMovingPlatform)
{
isGrounded = false
gravity = 0.3
}

else
{
isGrounded = true
gravity = 0
vspeed = 0
}

//An der Decke anstoßen
with(obj7735)
{
ceiling = instance_place(x,y-2,objBlockInvis)

if place_meeting(x,y-2,ceiling)
&& inMinecart = true
{
schubkarre.vspeed = 1
}
}



