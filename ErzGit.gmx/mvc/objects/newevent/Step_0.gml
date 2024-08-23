count += 1


//Event Text
if count = 40
{
if bevent = 1
{
scr_textnewevent("Paddy's#Fahrrad#Tour",0.3)
}
if event = 1
{
scr_textnewevent("Auf#zum#BLB HQ!",0.3)
}
}


if count <= 200
{
if image_xscale < 2
{
image_xscale += 0.05
image_yscale += 0.05
}

if image_xscale > 2
{
image_xscale = 2
}

if image_yscale > 2
{
image_yscale = 2
}
}

if count > 150
{
instance_destroy(objdesctext)
}

if count > 200
{
image_alpha -= 0.05
image_yscale -= 0.05
image_xscale += 0.22
}

if image_alpha <= 0
{
instance_destroy()
}

