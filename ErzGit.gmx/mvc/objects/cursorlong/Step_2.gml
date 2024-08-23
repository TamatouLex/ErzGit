

if !instance_exists(pausescreen)
{
instance_destroy()
}


if (scrButtonCheckPressed(global.shootButton))
{
instance_destroy(objdesctext)
instance_destroy(objeventstext)
if choice = 0
{
//Inventory
pausescreen.submenu = 0
pauseinv.image_index = 0
pauseevents.image_index = 1
pauseloadsave.image_index = 1
pauseoptions.image_index = 1
}

if choice = 1
{
//Events
pausescreen.submenu = 1
pauseinv.image_index = 1
pauseevents.image_index = 0
pauseloadsave.image_index = 1
pauseoptions.image_index = 1
}

if choice = 2
{
//Load / Save
pausescreen.submenu = 2
pauseinv.image_index = 1
pauseevents.image_index = 1
pauseloadsave.image_index = 0
pauseoptions.image_index = 1
}

if choice = 3
{
//Options
pausescreen.submenu = 3
pauseinv.image_index = 1
pauseevents.image_index = 1
pauseloadsave.image_index = 1
pauseoptions.image_index = 0
}

instance_destroy(objdesctext)
instance_destroy(objeventstext)
instance_destroy(objdesctext)
instance_destroy(objeventstext)
instance_destroy(objdesctext)
instance_destroy(objeventstext)
}

