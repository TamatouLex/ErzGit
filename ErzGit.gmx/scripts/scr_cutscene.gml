

//Spawn Animation
if image_index >= 3
{
image_speed = 0
image_index = 3
//icon.visible = true


}

if image_index = 3
{

if image_yscale < 0
{
Yoffset = sprite_height * image_yscale
}
else
{
Yoffset = 0
}


if schlaufe = false
{
//DEUTSCH
if global.lang = 0
{
if line[text] != ""
{
scr_textbox(line[text],0.75,x + (150*image_xscale) ,y - Yoffset)
schlaufe = true
}

//Wenn keine Lines mehr da sind, destroy!!
else
{
despawn = true
}
}

//ENGLISH
else if global.lang = 1
{
if lineE[text] != ""
{
scr_textbox(lineE[text],0.75,x +(150*image_xscale),y - Yoffset)
schlaufe = true
}

//Wenn keine Lines mehr da sind, destroy!!
else
{
despawn = true
}
}



} //Schlaufe False Ende


nestor += 1
//Wenn man weiter Skipt

//if keyboard_check_pressed(global.jumpButton)
if keyboard_check_pressed(ord('Y'))
&& nestor > 5
{
//Alles rausballern
if dialogbox.time < dialogbox.text_length
{
dialogbox.spd = 9999
}

//Next Text
else
{
dialogbox.destroy = 1
text += 1
nestor = 0
schlaufe = false
}

}

} //Image Index = 3 END


//Skip it
//if keyboard_check_pressed(global.pauseButton)
if keyboard_check_pressed(vk_escape)
{
despawn = true
}


//DESPWAWN ANIMATION
if despawn = true
{
with(dialogbox){instance_destroy()}
image_speed = 0
deAni += 1

if deAni >= 5
{
image_index -= 1
deAni = 0
}

if image_index < 0
{
destroy = true
}
} //DESPAWN END



