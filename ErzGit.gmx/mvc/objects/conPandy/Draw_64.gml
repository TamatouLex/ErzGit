
textx = 60
texty = 430

delay -= 1

if go = -1
&& print = true
{
scr_textarial("Was zur Hölle",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 0
&& print = true
{
instance_destroy(objarial)
scr_textarial("... ein clown?",0.75)
print = false
diatestchara2.side = 1
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 1
&& print = true
{
instance_destroy(objarial)
scr_textarial("Na ich bin kein Clown!",0.5)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 2
&& print = true
{
instance_destroy(objarial)
scr_textarial("Sondern ein Cashpal!",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 3
&& print = true
{
instance_destroy(objarial)
scr_textarial("Du meinst ein Kasperl?",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 4
&& print = true
{
instance_destroy(objarial)
scr_textarial("Red keinen Blödsinn",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 5
&& print = true
{
instance_destroy(objarial)
scr_textarial("...",0.55)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 6
&& print = true
{
instance_destroy(objarial)
scr_textarial("...",0.55)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 7
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich kann Doppelsprung",0.55)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 8
&& print = true
{
instance_destroy(objarial)
scr_textarial("Konnt ich auch mal",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 9
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich zeigs dir!",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 10
{
pandy.doActions = true
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
}


//Nach der Aktion
if go = 20
&& print = true
{
instance_destroy(objarial)
scr_textarial("eeehhmm...",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}


if go = 21
&& print = true
{
instance_destroy(objarial)
scr_textchoice("Choice:#1. Echt beeindruckend!#2. Das... war eigentlich kein Doppelsprung",99)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
go = 22
}


//Choice
if go = 22
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


//Choice 1: Loben!
if go = 100
&& print = true
{
instance_destroy(objarial)
scr_textarial("Du kannst es auch! Probier es mal!",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 101
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
}

//Choice 2: Skeptisch sein!
if go = 200
&& print = true
{
instance_destroy(objarial)
scr_textarial("Doch doch!",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 201
&& print = true
{
instance_destroy(objarial)
scr_textarial("Nein, du bist nur durch diese Kante geclipt und dann direkt davon wieder abgesprungen",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 202
&& print = true
{
instance_destroy(objarial)
scr_textarial("... Mein Leben war eine Lüge...",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 203
&& print = true
{
instance_destroy(objarial)
scr_textchoice("Choice:#1. Du hast bestimmt andere Talente#2. Ich hoffe du fällst in ein Loch welches zu tief für einen Normalen Sprung ist",99)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
go = 204
}


//Choice
if go = 204
{
if keyboard_check_pressed(ord("1"))
{
go = 300
print = true
}
else if keyboard_check_pressed(ord("2"))
{
go = 400
print = true
}
}

//ENCOURAGEMENT ROUTE
if go = 300
&& print = true
{
instance_destroy(objarial)
scr_textarial("Danke Freund! Ich werde mein Leben nun dem Schlagen von Rädern widmen",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 301
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
}


//DISS ROUTE
if go = 400
&& print = true
{
instance_destroy(objarial)
scr_textarial("Ich werde den Doppelsprung lernen, und wenn es das letzte ist was ich tu!",0.75)
print = false
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 401
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
}



//7735 hat den Doppelsprung gelernt
if go = 500
&& print = true
{
instance_destroy(objarial)
scr_textarial("Wow ich kann den Doppelsprung plötzlich wieder... Huh...",0.75)
print = false
diatestchara1.active = 1
diatestchara2.active = 0
diatestchara2.visible = false
}

if go = 501
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
}

