textx = 60
texty = 30

count += 1

if go = 0
{
scr_textarial("Oh wie geil! Eine Bombe!#",0.75)
go = 1
}


if count = 300
{
instance_destroy(objarial)
scr_textarial("Schnell! Leg sie dort vorne ab!!",0.75)
go = 3
}



if count = 600
{
instance_destroy(dialogtrigger)
instance_destroy()
instance_destroy(dialogbox)
}

