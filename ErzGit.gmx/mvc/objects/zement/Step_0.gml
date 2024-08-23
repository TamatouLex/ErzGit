count += 1

if place_meeting(x,y,objBlockInvis)
&& count > 50
{
instance_create(x,y,zementDrop)
instance_destroy()
}


minecart = instance_place(x,y,minecartIN)

if place_meeting(x,y,minecart)
{
minecart.hasCement = true
drop=instance_create(x,y,zementDrop)
drop.target = minecart
instance_destroy()
}

