//Erste Reihe
for(i=0;i<3200;i+=256)
{
a=instance_create(i,y,bush)
a.x = i-128
a.y = 500
a.depth = 15
a.image_blend = make_colour_rgb(255,255,255)
a.image_xscale = 4
a.image_yscale = 4
a.shiftspeed = 16
}

//Zweite Reihe
for(o=0;o<3200;o+=256)
{
b=instance_create(o,y,bush)
b.x = o
b.y = 450
b.depth = 20
b.image_blend = make_colour_rgb(180,180,180)
b.image_xscale = 4
b.image_yscale = 4
b.shiftspeed = 5
}


//Dritte Reihe
for(u=0;u<3200;u+=256)
{
c=instance_create(u,y,bush)
c.x = u-64
c.y = 400
c.depth = 25
c.image_blend = make_colour_rgb(100,100,100)
c.image_xscale = 4
c.image_yscale = 4
c.shiftspeed = 3
}

