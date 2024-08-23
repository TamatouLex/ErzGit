//Positioning nach Screen transitions

//WENT LEFT--------------------------------------------------------
if (wentLeft = true)
{
obj7735.x = room_width
wentLeft = false
}

//WENT UP--------------------------------------------------------
if (wentUp = true)
{
obj7735.y = room_height
wentUp = false
}


//WENT DOWN--------------------------------------------------------
if (wentDown = true)
{
if instance_exists(obj7735climb)
{
obj7735climb.y = 0
}

if instance_exists(obj7735)
{
obj7735.y = 0
}

wentDown = false
}


//WENT RIGHT--------------------------------------------------------
if (wentRight = true)
{
obj7735.x = 0
wentRight = false
}

if instance_exists(obj7735)
{
x = obj7735.x
y = obj7735.y
}

