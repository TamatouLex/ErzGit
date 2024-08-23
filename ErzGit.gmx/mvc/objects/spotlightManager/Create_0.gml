count = 0

//During the Boss Fight
if room = rBLBHofClone
{
countMax = 500
}

//In all the Other Screens
else
{
countMax = 100
}
//Boss Fight hat nur 2 Lights
if room = rBLBHofClone
{
maxLights = 2
}
//Die anderen Screens haben 16
else
{
maxLights = 16
}

for (i = 0;i<maxLights;i+=1)
{
light[i] = noone
}


lightAmount = 0

