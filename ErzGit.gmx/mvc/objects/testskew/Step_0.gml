


if keyboard_check_pressed(vk_f9)
{
skewinc -= 0.1
}

if keyboard_check_pressed(vk_f10)
{
skewinc += 0.1
}


if keyboard_check_pressed(vk_f7)
{
shiftinc -= 0.1
}

if keyboard_check_pressed(vk_f8)
{
shiftinc += 0.1
}


if keyboard_check_pressed(vk_f6)
{
skew += 200
shift += 200
}
/*
if keyboard_check_pressed(vk_f5)
{
skew -= 200
shift -= 200
}
*/
if keyboard_check(vk_left)
{
skew += skewinc
shift += shiftinc
}

if keyboard_check(vk_right)
{
skew -= skewinc
shift -= shiftinc
}

if keyboard_check(vk_down)
{
skew = 0
shift = 0
}



/*
if skew = -200
{
skew = 200
shift = 200
}

if skew = 200
{
skew = -200
shift = -200
}
*/



if shift < -100.80
{
shift = 100.80
skew = 50.4
}

if shift > 100.80
{
shift = -100.80
skew = -50.4
}



/* */
/*  */
