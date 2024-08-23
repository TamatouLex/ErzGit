count += 1


//IN THE BOSS ROOM
if room = rBLBHofClone
{
if count = countMax
{
lightAmount += 1 //Zählt wieviele Lichter gleichzeitig Leuchten
light[0].x = random_range(50,750)
light[0].y = random_range(300,350)
light[1].x = random_range(50,750)
light[1].y = random_range(50,100)

light[0].active = true //Es leuchtet!!
light[1].active = true //Es leuchtet!!
}

}

//Regular Section
else
{
if count = countMax
{
var whichLight = irandom_range(0,maxLights)
var xOffset = 300
var yOffset = 600

//Licht muss nahe Player sein
if instance_exists(obj7735)
&& instance_exists(light[whichLight])
&& light[whichLight].x < obj7735.x + xOffset
&& light[whichLight].x > obj7735.x - xOffset
&& light[whichLight].y < obj7735.y + yOffset
&& light[whichLight].y > obj7735.y - yOffset
&& light[whichLight].active = false
{
lightAmount += 1 //Zählt wieviele Lichter gleichzeitig Leuchten
light[whichLight].active = true //Es leuchtet!!
}

//Wird neu gewürfelt!
else
{
count = countMax - 1
}
}
}




