//Blockiert beim Schieben---------------------------------------------
if cart.isGrabbed = true
{
//Eject wenn zu tief drinnen
blocc = instance_place(x,y,objBlockInvis)
if place_meeting(x,y,blocc)
&& cart.image_angle > -5
&& cart.image_angle < 5
{
cart.hspeed = 0
obj7735.x = blocc.x-150
cart.hitWall = true
obj7735.rightBlock = true
obj7735.momentum = 0

}




}

//Blockiert wenn es alleine ist---------------------------------------------
if instance_exists(cart)
&& cart.isGrabbed = false
{
//Eject wenn zu tief drinnen
blocc = instance_place(x,y,objBlockInvis)
if place_meeting(x,y,blocc)
{
cart.x = blocc.x-116
cart.x -= 2
cart.hspeed = 0
obj7735.momentum = 0
}

}


else
{
cart.hitWall = false
obj7735.rightBlock = false
}


