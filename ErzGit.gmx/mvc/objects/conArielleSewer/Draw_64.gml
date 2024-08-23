
textx = 60
texty = 430

delay -= 1

if go = -1
&& print = true
{
scr_textarial("Arielle!",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 0
&& print = true
{
instance_destroy(objarial)
scr_textarial("Freundchen!!",0.75)
print = false
diatestchara2.side = 1
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 1
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich bin so froh, dass wir uns wiedersehen!!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 2
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich hab mir solche Sorgen gemacht",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
keyboard_string = 0;
}

if go = 3
&& print = true
{
instance_destroy(objarial)
scr_textarial("...*blush",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 4
&& print = true
{
instance_destroy(objarial)
scr_textarial("Du hast sicher viel durch gemacht. Ist alles okay?",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
delay = 10
keyboard_string = ""
}

//Choice
if go = 5
&& delay <= 0
&& print = true
{
instance_destroy(objarial)
scr_textchoice("Choice:#1. Ich gebe mein bestes die BLB Force zu stoppen!#2. Ich möchte einfach wieder nachhause...",99)

print = false
diatestchara1.active = 1
diatestchara2.active = 0
go = 6
}

//Choice
if go = 6
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
}




//Choice 1: BLB Force stoppen!
if go = 100
&& print = true
{
instance_destroy(objarial)
scr_textarial("Du bist ein wahrer Held! So tapfer!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 101
&& print = true
{
instance_destroy(objarial)
scr_textarial("Blush",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 102
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich werde dich so gut ich kann unterstützen!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 103
{
instance_destroy(objarial)
print = true
go = 301
}

//Choice 2: Nachhauseee!
if go = 200
&& print = true
{
instance_destroy(objarial)
scr_textarial("Das kann ich verstehen! Aber du musst mir versprechen die BLB Force zu vernichten...",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 201
{
instance_destroy(objarial)
print = true
go = 301
}


//Joined Path
if go = 301
&& print = true
{
instance_destroy(objarial)
scr_textarial("Die BLB Force opfert unschuldige Leben nur zu ihrer Unterhaltung",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 302
&& print = true
{
instance_destroy(objarial)
scr_textarial("Dachte die streamen ihre Show auf Twitch...",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 303
&& print = true
{
instance_destroy(objarial)
scr_textarial("Das stimmt! Aber sie haben fast keine viewer!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 304
&& print = true
{
instance_destroy(objarial)
scr_textarial("Bei meiner Show waren es 12 und das war ein Rekord, haben sie gesagt...",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 304
&& print = true
{
instance_destroy(objarial)
scr_textarial("... ... das hab ich mir gemerkt",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 305
&& print = true
{
instance_destroy(objarial)
scr_textarial("...",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 306
&& print = true
{
instance_destroy(objarial)
scr_textarial("Sag mal, kann ich dich um etwas bitten?",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 307
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich kann dir nämlich beibringen wie man taucht",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 308
&& print = true
{
instance_destroy(objarial)
scr_textarial("Aber dafür musst du für mich etwas sammeln...",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 309
&& print = true
{
instance_destroy(objarial)
scr_textarial("Und zwar Buchstaben!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 310
&& print = true
{
instance_destroy(objarial)
scr_textarial("Buchstaben!?",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 311
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ja Buchstaben!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 312
&& print = true
{
instance_destroy(objarial)
scr_textarial("Oh, welche denn? Sollen sie irgendwas schreiben am Ende?",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 313
&& print = true
{
instance_destroy(objarial)
scr_textarial("Alle Buchstaben",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 314
&& print = true
{
instance_destroy(objarial)
scr_textarial("Alle?!",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 315
&& print = true
{
instance_destroy(objarial)
scr_textarial("Sogar umlaute!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 316
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich werde ausschau halten!",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 317
&& print = true
{
instance_destroy(objarial)
scr_textarial("Danke! Ich werde genau hier warten! Komm mich jederzeit besuchen *name!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 318
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
}


//Bei nochmaligen ansprechen startet die Convo hier!
//Choice
if go = 400
&& print = true
{
instance_destroy(objarial)
scr_textchoice("Choice:#1. Wieso Buchstaben? #2. placeholder",99)

print = false
diatestchara1.active = 1
diatestchara2.active = 0
go = 401
}

//Choice
if go = 401
{
if keyboard_check_pressed(ord("1"))
{
go = 500
print = true
}
else if keyboard_check_pressed(ord("2"))
{
go = 600
print = true
}
}

//Why Buchstaben?
if go = 500
&& print = true
{
instance_destroy(objarial)
scr_textarial("Warum Buchstaben?",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 501
&& print = true
{
instance_destroy(objarial)
scr_textarial("Oh ich rede nicht gern darüber...",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 502
&& print = true
{
instance_destroy(objarial)
scr_textarial("Schon okay...",0.5)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}












/*
if go = 102
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich werde dich so gut ich kann unterstützen!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}




if go = 5
&& delay <= 0
{

keyboard_string = string_copy(keyboard_string,1,8)
text = string(keyboard_string)+ string("_"); 

 draw_set_color(c_white);
 draw_set_halign(fa_center);
 draw_set_valign(fa_middle);
 draw_text(200,500,text);


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
global.sevent[2] = 1

}
print = true
go = 13
}

//Choice
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
if keyboard_check_pressed(ord('1'))
{
go = 100
print = true
}
else if keyboard_check_pressed(ord('2'))
{
go = 200
print = true
}

if bossdia = true
{
if keyboard_check_pressed(ord('3'))
{
go = 300
print = true
}

else if keyboard_check_pressed(ord('4'))
{
go = 400
print = true
}

else if keyboard_check_pressed(ord('5'))
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
 draw_text(200,500,ps);


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





/* */
/*  */
