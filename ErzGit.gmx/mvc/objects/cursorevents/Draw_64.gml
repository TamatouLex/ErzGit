draw_self()

textx = 10
texty = 500

x = posx
y = posy

if keyboard_check_pressed(vk_left)
{
posx -= 400
}

if keyboard_check_pressed(vk_right)
{
posx += 400
}

if keyboard_check_pressed(vk_up)
{
pos -= 1
count = 0
instance_destroy(objdesctext)
//Cursor ist ganz oben und wird zu Dingsbums
if y <= 132
and eventcount.scroll = 0
{
instance_destroy()
instance_create(x,y,cursorlong)
}
//Cursor ist weiter unten und scrollt rauf
else if y <= 132
and eventcount.scroll < 0
{
instance_destroy(objeventstext)
eventcount.scroll += 1
}
else
{
posy -= 36
}
}

if keyboard_check_pressed(vk_down)
{
pos += 1
count = 0
instance_destroy(objdesctext)
if y < 440
{
posy += 36
}

else
{
eventcount.scroll -= 1
instance_destroy(objeventstext)
}

}

draw_text(x,y,string_hash_to_newline(y))
draw_text(x,y+30,string_hash_to_newline(x))
draw_text(x,y+60,string_hash_to_newline(pos))

