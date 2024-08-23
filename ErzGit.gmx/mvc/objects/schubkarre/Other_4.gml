
//Spawn Grab Trigger
grabbi = instance_create(x+grabOffsetX,y,schubkarreGrabTrigger)
grabbi.host = id

//Spawn Wall Detector
ray = instance_create(x+85,y+15,schubkarreWallRay)
ray.image_yscale = 0.5
ray.cart = id

//Spawn IN
in = instance_create(x,y,minecartIN)
in.image_xscale = 3
in.minecart = id

if room = rBLBNorthWest
{
x = 320
y = 562
}


if room = rBLBNorthEast
{
obj7735.canLeaveRoom = false
instance_create(x,y,conBangTNT)
x = 60
y = 562
}

