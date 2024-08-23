//Loop
arrowFlash += 1
if arrowFlash = 11
{
arrowFlash = 0
}

if arrowA = true
{
if arrowFlash = 5
{
a.visible = true
}
if arrowFlash = 10
{
a.visible = false
}
b.visible = false
}

else if arrowB = true
{
if arrowFlash = 5
{
b.visible = true
}
if arrowFlash = 10
{
b.visible = false
}
a.visible = false
}

//Constraints
if selection > 1
{
selection = 0
}
if selection < 0
{
selection = 1
}

//DRASCHE----------------------------------------------------------------------------------------------------------------
if pos = 101
{
x = mapDrasche.x
y = mapDrasche.y-30
//Prater
if selection = 0
{
arrowA = true
arrowB = false
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rPEntrance
}
}
//Spain
if selection = 1
{
arrowA = false
arrowB = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rSBeach
}
}

}



//PRATER------------------------------------------------------------------------------------------------------------------------------
if pos = 201 //Oberer Ausgang zu BLBHQ or (PLACEHOLDER AREA)
{
x = mapPrater.x
y = mapPrater.y-30
//Placeholder Area
if selection = 0
{
arrowA = true
arrowB = false
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rPlaceholderWest
}
}
//BLBHQ
if selection = 1
{
arrowA = false
arrowB = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rBLBSouthWest
}
}
}

if pos = 202 //Unterer Ausgang zu Draschepark oder Spanien
{
x = mapPrater.x
y = mapPrater.y+30
//Draschepark
if selection = 0
{
arrowA = true
arrowB = false
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rDbang
}
}
//Spain
if selection = 1
{
arrowA = false
arrowB = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rSBeach
}
}
}




//SPANIEN------------------------------------------------------------------------------------------------------------------------------------
if pos = 301  //Oberer Ausgang zu BLBHQ or (PLACEHOLDER AREA)
{
x = mapSpain.x
y = mapSpain.y-30
//BLBHQ
if selection = 0
{
arrowA = true
arrowB = false
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rBLBSouthEast
}
}
//PLACEHOLDER AREA
if selection = 1
{
arrowA = false
arrowB = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rPlaceholderEast
}
}
}

if pos = 302 //Unterer Ausgang zu Draschepark oder Prater
{
x = mapSpain.x
y = mapSpain.y+30
//Prater
if selection = 0
{
arrowA = true
arrowB = false
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rPEntrance
}
}
//Draschepark
if selection = 1
{
arrowA = false
arrowB = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rDbang
}
}
}


//BLBHQ------------------------------------------------------------------------------------------------------------------------------------
if pos = 401  //Ausgang zu Satzberg
{
x = mapBLBHQ.x-20
y = mapBLBHQ.y-30
//Placeholder Area West
arrowA = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rSaEntrance
}
}

if pos = 402  //Ausgang zu Reumann
{
x = mapBLBHQ.x+20
y = mapBLBHQ.y-30
//Placeholder Area West
arrowA = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rCreumann
}
}

if pos = 403  //Ausgang zu Placeholder Area West oder Prater
{
x = mapBLBHQ.x-20
y = mapBLBHQ.y+30


//Prater
if selection = 0
{
arrowA = false
arrowB = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rPRiesenradPlaza
}
}
}

if pos = 404 //SouthEast Ausgang zu Spanien oder Placeholder East
{
x = mapBLBHQ.x+20
y = mapBLBHQ.y+30
//Spanien
if selection = 0
{
arrowA = true
arrowB = false
if keyboard_check_pressed(vk_shift)
{
instance_create(400,300,obj7735)
room = rSBusStop
}
}
}

//Satzberg-------------------------------------------------------
if pos = 501  //Ausgang zu BLB HQ NortWest
{
x = mapSatzberg.x+20
y = mapSatzberg.y+30
arrowA = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,544,obj7735)
room = rBLBNorthWest
}
}

//Reumann Platz--------------------------------------------------------------------------------
if pos = 601  //Ausgang zu BLB HQ NorthEast
{
x = mapReumann.x-20
y = mapReumann.y+30
arrowA = true
if keyboard_check_pressed(vk_shift)
{
instance_create(400,544,obj7735)
room = rBLBNorthEast
}
}

if pos = 602  //Ausgang zu Mine
{
x = mapReumann.x-20
y = mapReumann.y+30
arrowA = true
if keyboard_check_pressed(vk_shift)
{
instance_create(200,400,obj7735)
room = rMineCarts
}
}


//TNT RUSH AREA-------------------------------------------------------------------------------
if pos = 701  //Ausgang zu BLB HQ NorthEast
{
x = mapTNTRush.x-20
y = mapTNTRush.y+30
arrowA = true
if keyboard_check_pressed(vk_shift)
{
instance_create(300,544,obj7735)
room = rBLBNorthWest
}
}

