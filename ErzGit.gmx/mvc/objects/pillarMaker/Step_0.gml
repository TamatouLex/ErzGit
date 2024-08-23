__view_set( e__VW.Visible, 1, false )
__view_set( e__VW.Visible, 0, true )

//Autos, Laser, Spülmaschienen AKA Autopilot

if gabel = 1
{
dice = 7
}

if autopilot = 1
{


//Gerade aus
if dice = 0
{
speed = 0
}


//Kurve Links leicht
if dice = 1
{
x -= 2
RichtungR -= 2
RichtungL -= 2
}

//Kurve Rechts leicht
if dice = 2
{
x += 2
RichtungR += 2
RichtungL += 2
}

//Nicht stolpern Leute AKA Damit er nicht aus dem screen flutscht
if x < 200 and gabel = 0
{
dice = 3
x = 200
}

//Buffert ein Gerade aus bevor er zur Mitte retunred
if dice = 3
{
bufferTime += 1

if bufferTime >= 50
{
if x < 800
{
dice = 5
}
else
{
dice = 6
}
bufferTime = 0
}

}

//Auf den rechten pfad bringen
if dice = 5
{
dicecounter = 61
dicepenalty += 1
x += 2
RichtungR += 2
RichtungL += 2
if dicepenalty = 80
{
dicecounter = 0
dice = irandom(4)
dicepenalty = 0
}
}


if x > 1400 and gabel = 0
{
dice = 3
x = 1400
}

//Auf den linken pfad bringen
if dice = 6
{
dicecounter = 61
dicepenalty += 1
x -= 2
RichtungR -= 2
RichtungL -= 2
if dicepenalty = 80
{
dicecounter = 0
dice = irandom(4)
dicepenalty = 0
}
}

}

//In die Mitte Bitte!
if dice = 7
{
dicecounter = 61
if x > 802
{
x -= 3
RichtungR -= 3
RichtungL -= 3
}

if x < 798
{
x += 3
RichtungR += 3
RichtungL += 3
}

if x = 798 or 799 or 800 or 801 or 802
{
x += 0
RichtungR += 0
RichtungL += 0
visier.split = 1

}


}





//BACKGROUND!!
if x > 750
{
__background_set( e__BG.HSpeed, 0, -0.5 )
}

if x < 700
{
__background_set( e__BG.HSpeed, 0, 1 )
}

if x < 650
{
__background_set( e__BG.HSpeed, 0, 1.5 )
}

if x < 600
{
__background_set( e__BG.HSpeed, 0, 3 )
}

if x < 550
{
__background_set( e__BG.HSpeed, 0, 4.5 )
}

if x < 500
{
__background_set( e__BG.HSpeed, 0, 8 )
}


//ZACK
if x > 850
{
__background_set( e__BG.HSpeed, 0, -0.5 )
}

if x > 900
{
__background_set( e__BG.HSpeed, 0, -1 )
}

if x > 950
{
__background_set( e__BG.HSpeed, 0, -1.5 )
}

if x > 1000
{
__background_set( e__BG.HSpeed, 0, -3 )
}

if x > 1050
{
__background_set( e__BG.HSpeed, 0, -4.5 )
}

if x > 1100
{
__background_set( e__BG.HSpeed, 0, -8 )
}


///PlayerControl
if scrButtonCheck(global.leftButton)
{
x-= 2
}

if scrButtonCheck(global.rightButton)
{
x+= 2
}

if scrButtonCheck(global.upButton)
{
y -= 2
}

else if scrButtonCheck(global.downButton)
{
y+= 2
}

if scrButtonCheckPressed(global.jumpButton)
{
schieneCounter = 99
}

///ER SPAWNED OBJEKTE!


//FLOOR
floorCounter += 1

if floorCounter = 5
{
for(i=0;i<1;i+=1)
{
//ARE YOU ALL RIGHT?
floorey[i] = instance_create(x,y+50,trolleyFloor)
floorey[i].depth = 9*floorey[i]
floorey[i].dir = 0
}

floorCounter = 0
}


//SCHIENEN-------------------------------------
schieneCounter += 1

if schieneCounter >= 3
{
for(i=0;i<1;i+=1)
{
//ARE YOU ALL RIGHT?
righty[i] = instance_create(x-5,y+50,trolleySchiene)
righty[i].depth = 1*righty[i]
righty[i].dir = -1

lefty[i] = instance_create(x+5,y+50,trolleySchiene)
lefty[i].depth = 1*lefty[i]
lefty[i].dir = 1

}
schieneCounter = 0
}


/*
//Schienen HOLZ
Holzcounter += 1

if Holzcounter = 4
{
for(i=0;i<1;i+=1)
{
//ARE YOU ALL RIGHT?
righty[i] = instance_create(x,400,trolleyHolz)
righty[i].depth = 1*righty[i]
righty[i].dir = 0
}

Holzcounter = 0
}
*/



/*
//Stone Pillars!
Pillarcounter += 1

if Pillarcounter = 10
{
for(i=0;i<1;i+=1)
{
//ARE YOU ALL RIGHT?
righty[i] = instance_create(RichtungR,360,pillarright)
righty[i].depth = 1*righty[i]
}
}


if Pillarcounter = 10
{
for(i=0;i<1;i+=1)
{
//NO YOU ARE ALL LEFT!! (Crowd laughing)
lefty[i] = instance_create(RichtungL,360,pillarleft)
lefty[i].depth = 1*lefty[i]
}
Pillarcounter = 0
}
*/















/*
//STALAGMITE!! AKA Rock2
Rock2counter += 1

if Rock2counter = 7 and gabel = 0
{
for(i=0;i<1;i+=1)
{
//ARE YOU ALL RIGHT?
rightyrock2[i] = instance_create(RichtungR+random_range(10,300),360,stalagmiteR)
rightyrock2[i].depth = 3*rightyrock2[i]
}
}


if Rock2counter = 14 and gabel = 0
{
for(i=0;i<1;i+=1)
{
//NO YOU ARE ALL LEFT!! (Crowd laughing)
leftyrock2[i] = instance_create(RichtungL-random_range(10,300),360,stalagmiteL)
leftyrock2[i].depth = 3*leftyrock2[i]
}
Rock2counter = 0
}
*/




/*
//STALAGMITE Triple!! AKA Rock3
Rock3counter += 1 and gabel = 0

if Rock3counter = 7
{
for(i=0;i<1;i+=1)
{
//ARE YOU ALL RIGHT?
rightyrock3[i] = instance_create(RichtungR+random_range(10,300),360,stalagmiteTR)
rightyrock3[i].depth = 3*rightyrock3[i]
}
}


if Rock3counter = 14 and gabel = 0
{
for(i=0;i<1;i+=1)
{
//NO YOU ARE ALL LEFT!! (Crowd laughing)
leftyrock3[i] = instance_create(RichtungL-random_range(10,300),360,stalagmiteTL)
leftyrock3[i].depth = 3*leftyrock3[i]
}
Rock3counter = 0
}





//STALAGMITE Singular!! AKA Rock1
Rock1counter += 1

if Rock1counter = 7 and gabel = 0
{
for(i=0;i<1;i+=1)
{
//ARE YOU ALL RIGHT?
rightyrock1[i] = instance_create(RichtungR+random_range(10,300),360,stalagmiteSR)
rightyrock1[i].depth = 3*rightyrock1[i]
}
}


if Rock1counter = 14 and gabel = 0
{
for(i=0;i<1;i+=1)
{
//NO YOU ARE ALL LEFT!! (Crowd laughing)
leftyrock1[i] = instance_create(RichtungL-random_range(10,300),360,stalagmiteSL)
leftyrock1[i].depth = 3*leftyrock1[i]
}
Rock1counter = 0
}





//STALAGMITE WALL
Rock4counter += 1

if Rock4counter = 2 and gabel = 0
{
for(i=0;i<1;i+=1)
{
//ARE YOU ALL RIGHT?
rightyrock3[i] = instance_create(RichtungR+random_range(200,300),360,stalagmiteTR)
rightyrock3[i].depth = 3*rightyrock3[i]
}
}


if Rock4counter = 2 and gabel = 0
{
for(i=0;i<1;i+=1)
{
//NO YOU ARE ALL LEFT!! (Crowd laughing)
leftyrock3[i] = instance_create(RichtungL-random_range(200,300),360,stalagmiteTL)
leftyrock3[i].depth = 3*leftyrock3[i]
}
Rock4counter = 0
}




*/



/* */
/*  */
