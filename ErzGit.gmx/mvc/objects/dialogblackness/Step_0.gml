if !instance_exists(dialogbox)
{
instance_destroy()
}

image_alpha += 0.05

if image_alpha > 0.9
{
image_alpha = 0.9
}

