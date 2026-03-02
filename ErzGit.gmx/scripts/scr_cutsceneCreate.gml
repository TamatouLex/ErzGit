text = 0
despawn = false
destroy = false
schlaufe = false
nestor = 0


//Text Stats
color = c_green
maxLength = 999

charaSprite1 = argument0
charaSprite2 = argument1

char1 = instance_create(x,y,diatestchara1)
char1.image_xscale = 1

char2 = instance_create(x,y-200,diatestchara1)
char2.image_xscale = -1
char2.sprite_index = spr_bangjet
char2.image_speed = 0.1
char2.image_xscale = -6
char2.image_yscale = 6
char2.charasize = 6
char2.side = 1


instance_create(x,y,dialogblackness)
count = 0


//Side Enum
enum whichChara
{
    left,
    right,
    both,
    none
}
