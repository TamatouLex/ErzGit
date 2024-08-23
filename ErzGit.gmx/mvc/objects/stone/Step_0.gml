if image_xscale > 0
{
image_angle += 7
}

else if image_xscale < 0
{
image_angle -= 7
}


if place_meeting(x,y,objBlock)
or place_meeting(x,y,objBlockInvis)
or place_meeting(x,y,objSlopeDownLeft)
or place_meeting(x,y,objSlopeDownRight)
{
destroy = 1
}

if destroy = 1
{
a=instance_create(x,y,stonesplitter)
b=instance_create(x,y,stonesplitter)
c=instance_create(x,y,stonesplitter)
d=instance_create(x,y,stonesplitter)
e=instance_create(x,y,stonesplitter)
a.image_index = 0
a.direction = random_range(180,270)
b.image_index = 1
b.direction = random_range(270,360)
c.image_index = 2
c.direction = random_range(90,180)
d.image_index = 3
d.direction = random_range(0,90)
e.image_index = 4
e.direction = random_range(0,360)
instance_destroy()
}

