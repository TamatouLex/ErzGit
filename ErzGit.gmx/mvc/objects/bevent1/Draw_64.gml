draw_self()

if instance_exists(eventcount)
{
x = 410
y = 100+((32*bevent)+(4*(bevent-1)))+(36*eventcount.scroll)
}

textx = x+36
texty = y-9

if y >= 130
{
if no = 1
{
scr_textevents("Paddy's Fahhred Tour",99,farbe)
}
if no = 2
{
scr_textevents("Rolands Baum",99,farbe)
}
if no = 22
{
scr_textevents("Gustav stabff",99,farbe)
}

image_alpha = 1
}

else
{
image_alpha = 0
}

