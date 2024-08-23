count += 1


//Event Text
if count = 40
{
if event = 0
{
scr_textnewevent("TEST#EVENT#Ronni!!",0.3)
event = 999
}
}


if count <= 200
{
if image_xscale > 2
{
image_xscale -= 0.06
}

if image_yscale < 2
{
image_yscale += 0.05
}

if image_xscale < 2
{
image_xscale = 2
}

if image_yscale > 2
{
image_yscale = 2
}
}

if count > 200
{
instance_destroy(objneweventtext)
image_alpha -= 0.05
image_yscale -= 0.05
image_xscale -= 0.05
}

if image_alpha <= 0
{
instance_destroy()
}

