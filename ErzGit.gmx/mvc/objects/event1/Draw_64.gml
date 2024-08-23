draw_self()

if instance_exists(eventcount)
{
x = 10
y = 100+((32*no)+(4*(no-1)))+(36*eventcount.scroll)
}

textx = x+36
texty = y-9

if y >= 130
{
if no = 1
{
scr_textevents("Zum BLB HQ",99,farbe)
}
if no = 2
{
scr_textevents("Finde Keycards",99,farbe)
}
if no = 3
{
scr_textevents("Rueben simd gut",99,farbe)
}
if no = 7
{
scr_textevents("Brot aus Bor",99,farbe)
}
if no = 13
{
scr_textevents("Daniel der Zaunerer",99,farbe)
}

image_alpha = 1
}

else
{
image_alpha = 0
}

