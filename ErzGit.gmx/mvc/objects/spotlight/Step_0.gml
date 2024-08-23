if active = true
{
//In der Section müssen immer zwei leuchten
if room = rBLBHof3
{
//Wenn nur ein Licht da ist, forcest er ein zweites
if spotlightManager.lightAmount = 1
{
spotlightManager.count = 99
}
//Countet nur wenn beide Lichter da sind
else if spotlightManager.lightAmount = 2
{
count += 1
}
}

//In den anderen Räumen countet er immer
else
{
count += 1
}
}

//Licht erlöscht
if count = maxCount
{
//Sicherheitsdings damit er nicht stuck sein kann im tanz
if instance_exists(obj7735)
{
obj7735.dance = false
}
spotlight.active = false
spotlight.count = 0
spotlightManager.count = 0
spotlightManager.lightAmount = 0
}


//ACTIVE OR NOT?!
if active = true
{
visible = true
}

else
{
visible = false
}

