
textx = 60
texty = 430

delay -= 1

if go = 0
&& print = true
{
scr_textarial("Hallo!... ich bin da!",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 1
&& print = true
{
instance_destroy(objarial)
scr_textarial("Hallo da!",0.75)
print = false
diatestchara2.side = 1
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 2
&& print = true
{
instance_destroy(objarial)
scr_textarial("... was?",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 3
&& print = true
{
instance_destroy(objarial)
scr_textarial("Sag, wie heißt du eigentlich?",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
keyboard_string = 0;
}

if go = 4
&& print = true
{
instance_destroy(objarial)
scr_textarial("Hmm... mein Name ist:",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
delay = 10
keyboard_string = ""
go = 5
}

if go = 5
&& delay <= 0
{

keyboard_string = string_copy(keyboard_string,1,8)
text = string(keyboard_string)+ string("_"); 

 draw_set_color(c_white);
 draw_set_halign(fa_center);
 draw_set_valign(fa_middle);
 draw_text(200,500,string_hash_to_newline(text));


if keyboard_check_pressed(vk_enter)
{
text = string_delete(text,string_length(text),1);
global.namebang = text
print = true
go = 6
}
}


if go = 6
&& print = true
{
instance_destroy(objarial)
scr_textarial("Hello "+string(global.namebang)+string("chen"),0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 7
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ja...fast... hallo...",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 8
&& print = true
{
instance_destroy(objarial)
scr_textarial("Pass auf "+string(global.namebang)+string("chen! Diese Festung im Hintergrund ist das BLB HQ"),0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 9
&& print = true
{
instance_destroy(objarial)
scr_textarial("Das Problem is jetzt, wir kommen da nicht rein",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 10
&& print = true
{
instance_destroy(objarial)
scr_textarial("Weil nämlich... die Tür is abgeschlossen...",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 11
&& print = true
{
instance_destroy(objarial)
scr_textarial("Und wir brauchen 5 Chipkarten um sie zu öffnen",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 12
&& print = true
{
//if global.sevent[2] = 0
{
instance_destroy(objarial)
delay = 100
evnt=instance_create(x,y,newevent)
evnt.event = 2
global.EexplodeDoor = 1

}
print = true
go = 13
}

if go = 13
&& delay <= 0
&& print = true
{
instance_destroy(objarial)
if bossdia = false
{
scr_textchoice("Choice:#1. Und wo sind die Chipkarten?#2. Flieg halt rüber mit deinem Jetpack",99)
}
else if bossdia = true
{
scr_textchoice("Choice:#1. Und wo sind die Chipkarten?#2. Flieg halt rüber mit deinem Jetpack#3. Wer ist dieser Boss?#4. Warum machen wir das eigentlich?#5. Tschüss!",99)
}
print = false
diatestchara1.active = 1
diatestchara2.active = 0
go = 14
}

//Choice
if go = 14
{
if keyboard_check_pressed(ord("1"))
{
go = 100
print = true
}
else if keyboard_check_pressed(ord("2"))
{
go = 200
print = true
}

if bossdia = true
{
if keyboard_check_pressed(ord("3"))
{
go = 300
print = true
}

else if keyboard_check_pressed(ord("4"))
{
go = 400
print = true
}

else if keyboard_check_pressed(ord("5"))
{
go = 500
print = true
}
}

}



//Choice 1---------------------------------------------------------------------------------------------------------------------------
if go = 100
&& print = true
{
instance_destroy(objarial)
scr_textarial("Laut dem Boss sind die im Privatbesitz der BLB Force. Wir müssen sie suchen und zur strecke bringen!",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 101
&& print = true
{
instance_destroy(objarial)
scr_textarial("Dann können wir herein und uns ihren Anführer Tamatou vorknöpfen!",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 102
&& print = true
{
bossdia = true
go = 13
}


//Choice 2 Jetpack-----------------------------------------------------------------
if go = 200
&& print = true
{
instance_destroy(objarial)
scr_textarial("Das geht nicht! Der Boss sagte explizit, dass du dabei sein musst",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 201
&& print = true
{
bossdia = true
go = 13
}


//Choice 3 Boss-----------------------------------------------------------------
if go = 300
&& print = true
{
instance_destroy(objarial)
scr_textarial("Nur seine beiden Generäle kennen sein Gesicht",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 301
&& print = true
{
instance_destroy(objarial)
scr_textarial("Er rekrutierte mich extra für diese Mission",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 302
&& print = true
{
instance_destroy(objarial)
scr_textarial("Also bin ich selber voll neugierig",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 303
&& print = true
{
bossdia = true
go = 13
}

//Choice 4 What are we doing?-----------------------------------------------------------------
if go = 400
&& print = true
{
instance_destroy(objarial)
scr_textarial("Hinter diesen Mauern tragen sich unvorstellbar schreckliche Dinge zu",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 401
&& print = true
{
instance_destroy(objarial)
scr_textarial("Unsere Mission ist es die Festung zu infiltrieren und Tamatou zu vernichten",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 402
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich hab ihn im letzten Abenteuer besiegt und einen John Deere Tracktor gewonnen",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 403
&& print = true
{
instance_destroy(objarial)
scr_textarial("Wieviel PS?",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 403
&& print = true
{
instance_destroy(objarial)
scr_textarial("Wieviel PS?",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
keyboard_string = ""
keyboard_string = string_delete(keyboard_string,1,99)
}


if go = 404
{
keyboard_string = string_digits(keyboard_string)
ps = string(keyboard_string)+ string("_ Pferdestärke"); 

diatestchara1.active = 1
diatestchara2.active = 0

 draw_set_color(c_white);
 draw_set_halign(fa_center);
 draw_set_valign(fa_middle);
 draw_text(200,500,string_hash_to_newline(ps));


if keyboard_check_pressed(vk_enter)
{
ps = string_delete(text,string_length(text),1);
print = true
go = 405
}
}

if go = 405
&& print = true
{
instance_destroy(objarial)
if ps < 350
{
scr_textarial("Boah, rip off!",0.75)
}
else if ps >= 350 && ps < 800
{
scr_textarial("Na das is ein heißes eisen!",0.75)
}
else
{
scr_textarial("Wers glaubt...",0.75)
}
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 406
&& print = true
{
instance_destroy(objarial)
scr_textarial("...",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 407
&& print = true
{
instance_destroy(objarial)
scr_textarial("Tamatou lebt aber noch! Wir müssen die Chipkarten finden!!",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 408
&& print = true
{
bossdia = true
go = 13
}



if go = 500
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
instance_activate_object(obj7735)
}

