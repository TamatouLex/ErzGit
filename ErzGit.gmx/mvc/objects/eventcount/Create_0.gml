//Erzeugt die Event Liste im Menü

go = 0
scroll = 0
unlocked = 0
cleared = 0

//Main Quest
if global.sevent[1] > 0
{
a=instance_create(x,y,event1)
a.no = 1
}

if global.sevent[2] > 0
{
a=instance_create(x,y,event1)
a.no = 2
}

if global.sevent[3] > 0
{
a=instance_create(x,y,event1)
a.no = 3
}

if global.sevent[4] > 0
{
a=instance_create(x,y,event1)
a.no = 4
}

if global.sevent[13] > 0
{
a=instance_create(x,y,event1)
a.no = 13
}

//Side Quests
if global.sbevent[1] > 0
{
a=instance_create(x,y,bevent1)
a.no = 1
}


/*
//Main Quests
for(i=0;i<99;i++)
{
if global.sevent[i] > 0
{
a=instance_create(x,y,event1)
a.no = i
}
}

//Side Quests
for(i=0;i<99;i++)
{
if global.sbevent[i] > 0
{
a=instance_create(x,y,bevent1)
a.no = i
}
}


/* */
/*  */
