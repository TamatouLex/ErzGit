if !instance_exists(pausescreen)
{
instance_destroy()
}




//Blinzel Animation
blinzla = irandom(80)
if blinzla = 5
{
go = 1
}

if go = 1
{
count += 1

if count = 1
{
image_index = 1
}

if count = 5
{
image_index = 2
}

if count = 9
{
image_index = 0
count = 0
go = 0
}
}

