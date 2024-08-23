image_speed = 0.2

if instance_exists(obj7735)
{
obj7735.visible = false
}

pos = global.mappos
a = noone
b = noone

selection = 0
arrowA = true
arrowB = false
arrowFlash = 0

if pos = 101 //Im Draschepark
{
a=instance_create(x,y,mapArrow)
b=instance_create(x,y,mapArrow)

a.x = mapDrasche.x-50
a.y = mapDrasche.y-80
a.image_angle = 45

b.x = mapDrasche.x+50
b.y = mapDrasche.y-80
b.image_angle = -45
}

if pos = 201 //Im Prater Oberer ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(x,y,mapArrow)

a.x = mapPrater.x-50
a.y = mapPrater.y-80
a.image_angle = 45

b.x = mapPrater.x+50
b.y = mapPrater.y-80
b.image_angle = -45
}

if pos = 202 //Im Prater Unterer ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(x,y,mapArrow)

a.x = mapPrater.x+50
a.y = mapPrater.y+80
a.image_angle = 180+45 //3

b.x = mapPrater.x+100
b.y = mapPrater.y
b.image_angle = -90 //Nach Rechts
}

if pos = 301 //In Spanien oberer ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(x,y,mapArrow)

a.x = mapSpain.x-50
a.y = mapSpain.y-80
a.image_angle = 45

b.x = mapSpain.x+50
b.y = mapSpain.y-80
b.image_angle = -45
}

if pos = 302 //In Spanien Unterer ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(x,y,mapArrow)

a.x = mapSpain.x-100
a.y = mapSpain.y
a.image_angle = 90 //Nach Links

b.x = mapSpain.x-50
b.y = mapSpain.y+80
b.image_angle = 180-45 //1
}

//BLB HQ ----------------------------------------
if pos = 401 //BLB NordWest Ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(999,999,mapArrow)

a.x = mapBLBHQ.x-50
a.y = mapBLBHQ.y-80
a.image_angle = 45 //Nach Links
}

if pos = 402 //BLB NordEast Ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(999,999,mapArrow)

a.x = mapBLBHQ.x+50
a.y = mapBLBHQ.y-80
a.image_angle = -45 //Nach Links
}

if pos = 403 //BLB SouthWest Ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(999,999,mapArrow)

a.x = mapBLBHQ.x-50
a.y = mapBLBHQ.y+80
a.image_angle = 90+45 //Nach Links
}

if pos = 404 //BLB SouthEast Ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(999,999,mapArrow)

a.x = mapBLBHQ.x+50
a.y = mapBLBHQ.y+80
a.image_angle = 180-45 //Nach Links
}

//Satzberg-----------------------------------------------------------------
if pos = 501 //Satzberg Ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(999,999,mapArrow)

a.x = mapSatzberg.x+50
a.y = mapSatzberg.y+80
a.image_angle = -45-90
}

//Reumann Platz-----------------------------------------------------------------
if pos = 601 //Reumannplatz Ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(999,999,mapArrow)

a.x = mapReumann.x-50
a.y = mapReumann.y+80
a.image_angle = 135-90 
}

if pos = 602 //Ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(999,999,mapArrow)

a.x = mapReumann.x-50
a.y = mapReumann.y+80
a.image_angle = 135-90 
}

//TNTRush-----------------------------------------------------------------
if pos = 701 //TNTRush Ausgang
{
a=instance_create(x,y,mapArrow)
b=instance_create(999,999,mapArrow)

a.x = mapTNTRush.x-50
a.y = mapTNTRush.y+80
a.image_angle = 90
}



