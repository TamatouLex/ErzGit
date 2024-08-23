//HitColor
if hit = 1
{
image_blend = make_colour_rgb(255,100,100)
colorcount +=1

if colorcount = 5
{
hit = 0
colorcount = 0
image_blend = make_colour_rgb(255,255,255)
}
}
