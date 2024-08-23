
//Am Ende geht er in die Mitte
if cutscene = true
{

if x > 402
{
x -= 3
}

if x < 398
{
x += 3
}

if y < 270
{
y+= 3
}

if y > 274
{
y-= 3
}

}


//Controlls----------------------------------------------------------------------------
//Left
if (scrButtonCheck(global.leftButton))
{
x -= moveSpeed
}
//Right
if (scrButtonCheck(global.rightButton))
{
x += moveSpeed
}
//Up
if (scrButtonCheck(global.upButton))
{
y -= moveSpeed
}
//Down
if (scrButtonCheck(global.downButton))
{
y += moveSpeed
}

//Focus----------------------------------------------------------------------------
if (scrButtonCheckPressed(global.jumpButton))
{
focus = true
moveSpeed = 3
shmupFocus.visible = true
}

//No Focus----------------------------------------------------------------------------
if (scrButtonCheckReleased(global.jumpButton))
{
focus = false
moveSpeed = 8
shmupFocus.visible = false
}




//Shoot----------------------------------------------------------------------------
if (scrButtonCheckReleased(global.shootButton))
{
//Without Focus
if focus = false
{
count += 1
if count = 6
{
boppy = instance_create(x+4,y-7,objBullet)
boppy.vspeed = 10
boppy.hspeed = 0
}

if count = 12
{
beppy = instance_create(x-4,y-7,objBullet)
beppy.vspeed = 10
beppy.hspeed = 0
count = 0
}
}

//With Focus
if focus = true
{
count2 += 1

if count2 = 4
{
boppy = instance_create(x+4,y-7,objBullet)
boppy.vspeed = 10
boppy.hspeed = 0
beppy = instance_create(x-4,y-7,objBullet)
beppy.vspeed = 10
beppy.hspeed = 0
count2 = 0
}
}
}

///Grenzen
if x < 42
{
x = 42
}


if x > 758
{
x = 758
}


if y > 603
{
y = 603
}

if y < 10
{
y = 10
}


