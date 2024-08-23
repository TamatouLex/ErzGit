if shakeX > 0
{
shakeX -= 1
}

if shakeY > 0
{
shakeY -= 1
}

/*
view_xview = random_range(-shakeX,shakeX);
view_yview = random_range(-shakeY,shakeY);
*/

camera.shakeX = random_range(-shakeX,shakeX);
camera.shakeY = random_range(-shakeY,shakeY);


if shakeX <= 0
{
instance_destroy()
}

/* */
/*  */
