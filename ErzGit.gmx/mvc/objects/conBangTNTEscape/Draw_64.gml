textx = 60
texty = 30

count += 1

if go = 0
{
scr_textarial("Die TNT fliegt gleich!!#",2)
go = 1
}


if count = 150
{
instance_destroy(objarial)
scr_textarial("in die Luuufft! WEG!!",2)
go = 3
}

if count = 300
{
instance_destroy(objarial)
scr_textarial("DECK DICH DECK DICH",2)
go = 3
}



if count = 1000
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
}

