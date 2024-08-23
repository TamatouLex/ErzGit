image_speed = 0.1
image_xscale = 1.4
image_yscale = 1.4

for(var i = 0;i<6;i+=1)
{
geisti[i] = instance_create(x,y,geist)
//geisti[i].x += random_range(-10,10)
//geisti[i].y += random_range(-10,10)
geisti[i].target = id
}

action_path(outerGhost, 0, 0, 1);
