scr_paralaxbg()


//Sichtbarkeit
if global.lua = 1
{
visible = true
}
else
{
visible = false
}



if !instance_exists(cameraflag)
{
instance_create(x,y,cameraflag)
}

if instance_exists(cameraflag)
{
//Follows 7735
if instance_exists(obj7735)
{
x = obj7735.x + shakeX
}

//Follows 7737
else if instance_exists(objPlayer)
{
x = objPlayer.x + shakeX
}

//Follows Slingshot
else if instance_exists(slingshot)
&& slingshot.active = true
{
x = lerp(x,slingshot.x,0.2)
}

//Follows 7737Launch
else if instance_exists(playerLaunched)
{
x = lerp(x,playerLaunched.x,0.2)
}



else
{
x = cameraflag.x
}

y = lerp(y,cameraflag.y + shakeY,0.1)

}


///Debug Keys

//TELEPORT 1
if keyboard_check_pressed(ord("1"))
{
room = rTrolley
}

//TELEPORT 2
if keyboard_check_pressed(ord("2"))
{
room = rFehlstart
objPlayer.x = 60
objPlayer.y = 60

}

//TELEPORT 3
if keyboard_check_pressed(ord("3"))
{
room = rBLBHof3
}

//TELEPORT 4
if keyboard_check_pressed(ord("4"))
{
room = rMineCartRide
obj7735.y = 100
}


__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2 )
__view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2 )

__view_set( e__VW.HView, 0, 608 * zoom_factor )
__view_set( e__VW.WView, 0, 800 * zoom_factor )

if keyboard_check_pressed(vk_add)
{
zoom_factor += 1
}

if keyboard_check_pressed(vk_subtract)
{
zoom_factor -= 1
}


//ENABLE DEBUG MODE
if keyboard_check_pressed(vk_f1)
{
if global.lua = 0
{
global.lua = 1
}
else
{
global.lua = 0
}
}


//Screen Shake
if keyboard_check_pressed(vk_f5)
{
instance_create(x,y,screenShake)
}

