textx = 60
texty = 430

if go = 0
{
scr_textarial("Hallo sportsfreund! Willkommen     auf     der#BMX Bahn!",0.75)
go = 1
diatestchara2.active = 1
}

if go = 2
{
instance_destroy(objarial)
scr_textarial("Oh nein er hat mich angesprochen...",0.75)
go = 3
diatestchara2.side = 1
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 4
{
instance_destroy(objarial)
scr_textarial("Du siehst aus als könntest du mir helfen!",0.75)
go = 5
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 6
{
instance_destroy(objarial)
scr_textarial("Ohje...",0.75)
go = 7
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 8
{
instance_destroy(objarial)
scr_textarial("Meinem Fahhrad fehlt leider ein teil!",0.75)
go = 9
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 10
{
if global.sbevent1 = 0
{
evnt=instance_create(x,y,newevent)
evnt.bevent = 1
global.sbevent1 = 1
go = 11
}
else go = 12
}

if go = 12
{
instance_destroy(objarial)
scr_textarial("Tut mir leid, aber...",0.75)
go = 13
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 14
{
instance_destroy(objarial)
scr_textarial("Die Speichen!",0.75)
go = 15
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 16
{
instance_destroy(objarial)
scr_textarial("Weißt du wo man sowas findet? Fährst du denn selber gern rad?",0.75)
go = 17
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 18
{
instance_destroy(objarial)
scr_textarial("Nein nicht wirkl...",0.75)
go = 19
count += 1
if count = 30
{
go = 20
}
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 20
{
instance_destroy(objarial)
scr_textarial("Bist du vielleicht soeine art rad profi?",0.75)
go = 21
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 22
{
instance_destroy(objarial)
scr_textarial("Apropos speichen! Speichere dein Spiel im Pause menü!",0.75)
go = 23
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 24
{
instance_destroy(objarial)
scr_textarial("Ich geh jetzt dann mal",0.75)
go = 25
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 26
{
instance_destroy(objarial)
scr_textarial("Du kannst mich mal!",0.75)
go = 27
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 28
{
instance_destroy(objarial)
scr_textarial("Einschalten!!",0.75)
go = 29
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 30
{
instance_destroy()
instance_destroy(dialogbox)
}

