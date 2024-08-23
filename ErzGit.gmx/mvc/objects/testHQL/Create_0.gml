depth = 100

if room = rBLBSouthWest
|| room = rBLBSouthEast
|| room = rBLBNorthWest
|| room = rBLBNorthEast
{
image_xscale = 4
x = room_width/2
y = 224

a=instance_create(x,y,HQTower)
b=instance_create(x,y,HQTower)
c=instance_create(x,y,HQTower)
d=instance_create(x,y,HQTower)


a.no = 1
b.no = 2
c.no = 3
d.no = 4


a.depth = 210
b.depth = 90
c.depth = 210
d.depth = 210


length = 3.5
turn = 200
paralax = 3
}


else
{
image_xscale = 10
}

