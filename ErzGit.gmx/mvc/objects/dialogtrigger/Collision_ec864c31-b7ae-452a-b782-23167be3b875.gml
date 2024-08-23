if automatic = true
|| (automatic = false && keyboard_check_pressed(vk_up))
{
//Paddy
if room = rDbmxbahn
{
instance_create(x,y,conpaddy)
}

//First Bang Encounter
if room = rDbang && global.EmeetBangAtHQ = 0
{
instance_create(x,y,conBangFirst)
}
//Second Bang Encounter
if room = rBLBNorthEast
{
instance_create(x,y,conBangSecond)
}
//Arielle Sewer Encounter
if room = rSewerPond
{
instance_create(x,y,conArielleSewer)
}
if room = rSewerPandy
{
instance_create(x,y,conPandy)
}
}

