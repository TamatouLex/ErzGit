textx = 60
texty = 430

if go = 0
{
scr_textarial("Yeah! Lang nicht gesehn, mein Kumpane!#",0.75)
go = 1
diatestchara2.active = 1
}

if go = 2
{
instance_destroy(objarial)
scr_textarial("Oh Gott, nein...",0.75)
go = 3
diatestchara2.side = 1
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 4
{
instance_destroy(objarial)
scr_textarial("Lass uns keine Zeit verlieren! Wir müssen immernoch die BLBForce stoppen!",0.75)
go = 5
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 6
{
instance_destroy(objarial)
scr_textarial("Müssen wir?",0.75)
go = 7
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 8
{
instance_destroy(objarial)
scr_textarial("Es ist ein Befehl vom Boss!",0.75)
go = 9
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 10
{
if global.sevent1 = 0
{
evnt=instance_create(x,y,newevent)
evnt.event = 1
global.EmeetBangAtHQ = 1
go = 11
}
else go = 12
}

if go = 12
{
instance_destroy(objarial)
scr_textarial("Kannst selber machen! Ich hab so garkeinen Bock",0.75)
go = 13
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 14
{
instance_destroy(objarial)
scr_textarial("Wir treffen uns Hinter dem BLBHQ",0.75)
go = 15
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 16
{
instance_destroy(objarial)
scr_textarial("Auf der Nord Seite um genau zu sein!",0.75)
go = 17
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 18
{
instance_destroy(objarial)
scr_textarial("Bitte brauch nicht zu lange!",0.75)
go = 19
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 20
{
instance_destroy(objarial)
scr_textarial("...",0.75)
go = 21
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 22
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
bangjet.go = true
}

