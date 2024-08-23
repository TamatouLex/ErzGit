

if !instance_exists(pausescreen)
{
instance_destroy()
}




//Event descriptions
//Main
if x = 10
{
//Event 1
if pos = 1
&& global.sevent[1] != 0
{
count += 1
if count = 3
{
scr_textdesc("Geh schnell zum BLB HQ!",0.5)
}
}

//Event 2
else if pos = 2
&& global.sevent[2] != 0
{
count += 1
if count = 3
{
scr_textdesc("Vorsicht!#Goffey's Nase hat ein Leck ergriffen!!#Nasiwien,.",0.5)
}
}
//Event 13
else if pos = 13
&& global.sevent[13] != 0
{
count += 1
if count = 3
{
scr_textdesc("VWieselburger",0.5)
}
}
}


//Side
else if x = 410
{
if y = 132
&& global.sbevent[1] != 0
{
count += 1
if count = 3
{
scr_textdesc("Na toll! Paddy hat sein Fahrrad mal wieder geschrottet -.-#Finde seine Speichen... vielleicht sind sie im Speicherbildschirm? ;)",0.5)
}
}
}


