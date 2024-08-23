textx = 60
texty = 430

if go = 0
{
scr_textarial("Nagut, er hätte jetzt aber schon mit mir auch gleich#durch den aufgesprengten Eingang gehen können...#",0.75)
go = 1
diatestchara1.active = 1
}


if go = 2
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
}

