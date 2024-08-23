bossdia = false
print = true
delay = 0 //Sperrt Input f+r gewisse Zeit
go = -1
instance_create(x,y,dialogbox)
char1=instance_create(x,y,diatestchara1)
char1.image_xscale = 1
char1.charasize = 1

char2=instance_create(x,y-900,diatestchara2)
char2.image_xscale = -1
char2.sprite_index = spr_pandyDia
char2.image_speed = 0.1
char2.image_xscale = -1
char2.image_yscale = 1
char2.charasize = 1
char2.side = 1
instance_create(x,y,dialogblackness)
count = 0

text = "";
name = ""

///Script
/*

735: ... ein clown?
Pandy: Na ich bin kein Clown!
Pandy: Sondern ein Cashpal!
7735: Du meinst ein Kasperl?
Pandy: Red keinen Blödsinn!
7735: ...
Pandy: ...
Pandy: Ich kann Doppelsprung!
7735: Konnt ich auch mal
Pandy: Ich zeigs dir!

*does doppelsprung

7735: äääähm...
Option 1: Echt beeindruckend!
Pandy: Du kannst es auch! Probier mal!

Option 2: Das... war eigentlich kein Doppelsprung!
Pandy: Doch doch!
7735: Nein, du bist nur durch diese Kante geclipt und dann direkt davon wieder abgesprungen
Pandy: ... Mein Leben war eine Lüge...

Option 1: Du hast bestimmt andere Talente
Pandy: Danke Freund! Ich werde mein Leben nun dem Schlagen von Rädern widmen
*Revolva Dad weg

Option 2: Ich hoffe du fällst in ein Loch welches zu tief für einen Normalen Sprung ist
Pandy: Ich werde den Doppelsprung lernen, und wenn es das letzte ist was ich tu!


*After learning Doppelsprung
7735: Wow ich kann das plötzlich wirklich!

/* */
/*  */
