if !instance_exists(dialogbox)
{
instance_destroy()
}

//Er redet nicht!
if active = 0
{

if image_alpha > 0.7
{
image_alpha -= 0.04
}

if side = 0
{
image_xscale = lerp(image_xscale,charasize*0.9,0.5)
image_yscale = lerp(image_yscale,charasize*0.9,0.5)
}
else if side = 1
{
image_xscale = lerp(image_xscale,charasize*0.8,0.5)
image_yscale = lerp(image_xscale,charasize*0.8,0.5)
}

}


//Er redet!!
if active = 1
{

if image_alpha < 1
{
image_alpha += 0.04
}

if side = 0
{
image_xscale = lerp(image_xscale,charasize*1.1,0.5)
image_yscale = lerp(image_yscale,charasize*1.1,0.5)
}

else if side = 1
{
image_xscale = lerp(image_xscale,charasize*1.1,0.5)
image_yscale = lerp(image_yscale,charasize*1.1,0.5)
}

}


//Grenze nur
if image_alpha > 1
{
image_alpha = 1
}

