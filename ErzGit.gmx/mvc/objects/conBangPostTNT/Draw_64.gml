textx = 60
texty = 430

if go = 0
{
scr_textarial("Wow die sind jetzt sicher aufgewacht durch den Knall#",0.75)
go = 1
diatestchara1.active = 1
}

if go = 2
{
instance_destroy(objarial)
scr_textarial("Keine Sorge, die BLB Force wohnt nicht da drin",0.75)
go = 3
diatestchara2.side = 1
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 4
{
instance_destroy(objarial)
scr_textarial("Nicht?",0.75)
go = 5
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 6
{
instance_destroy(objarial)
scr_textarial("Außer Tamatou",0.75)
go = 7
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 8
{
instance_destroy(objarial)
scr_textarial("Ja schlimm genug oder?",0.75)
go = 9
diatestchara1.active = 1
diatestchara2.active = 0
}


if go = 10
{
instance_destroy(objarial)
scr_textarial("Hey immer positiv bleiben Freundchen!",0.75)
go = 11
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 12
{
instance_destroy(objarial)
scr_textarial("Ehm... es scheint als hätten wir zumindest keinen#Alarm ausgelöst ",0.75)
go = 13
diatestchara1.active = 1
diatestchara2.active = 0
}

if go = 14
{
instance_destroy(objarial)
scr_textarial("Oh die Alarmanlage dieser Festung ist sehr speziell!",0.75)
go = 15
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 16
{
instance_destroy(objarial)
scr_textarial("Wirst du sehen wenn du drinnen bist!",0.75)
go = 17
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 18
{
instance_destroy(objarial)
scr_textarial("Ich flieg schon mal rein! Also hoppauf! Komm auch rein!",0.75)
go = 19
diatestchara1.active = 0
diatestchara2.active = 1
}

if go = 20
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
bangjet.go = true
}

