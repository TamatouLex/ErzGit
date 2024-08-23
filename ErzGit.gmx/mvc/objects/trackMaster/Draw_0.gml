//Background

//NOTE: Eventuell genau wie die Schienen als Sprite machen


//Far Mountains
for (var i= -20;i<20;i+= 1)
{
draw_sprite_ext(spr_trolleyBG,0,x*BGSpeed+(i*100),y+bgY,10,10,0,c_white,1)
}

//Close Mountains
for (var i= -100;i<100;i+= 1)
{
draw_sprite_ext(spr_trolleyBG,0,x*(BGSpeed*3)+(i*100),y+bgY,3,3,0,c_white,1)
}

//EBENE 1: WEIT WEG-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//High Horizon
draw_sprite_ext(spr_blockoutGreen,0,0,y+TopY,50,1,0,c_white,1)

//Pillar Left 1
var pillarX = x+(parallax/100)*power((pillarY[0]*afterErgo-165),2)
var size = pillarY[0]*pillarAcc[0]
draw_sprite_ext(spr_pillar,0,pillarX-5-(pillarY[0]*(pillarAcc[0]*128)),y+pillarY[0]+TopYP[0],size,size,0,c_white,1)

//Pillar Right 1
var pillarX = x+(parallax/100)*power((pillarY[1]*afterErgo-165),2)
var size = pillarY[1]*pillarAcc[1]
draw_sprite_ext(spr_pillar,0,pillarX+5+(pillarY[1]*(pillarAcc[1]*128)),y+pillarY[1]+TopYP[1],size,size,0,c_white,1)

//Pillar Left 2
var pillarX = x+(parallax/100)*power((pillarY[2]*afterErgo-165),2)
var size = pillarY[2]*pillarAcc[2]
draw_sprite_ext(spr_pillar,0,pillarX-5-(pillarY[2]*(pillarAcc[2]*128)),y+pillarY[2]+TopYP[2],size,size,0,c_white,1)

//Pillar Right 2
var pillarX = x+(parallax/100)*power((pillarY[3]*afterErgo-165),2)
var size = pillarY[3]*pillarAcc[3]
draw_sprite_ext(spr_pillar,0,pillarX+5+(pillarY[3]*(pillarAcc[3]*128)),y+pillarY[3]+TopYP[3],size,size,0,c_white,1)


//Top Quarter
for(i= 6;i<32;i+= 1)
{
ergo = x+(parallax/100)*power((i*afterErgo-165),2)
draw_sprite(sprite_index,i,ergo,y+i+TopY)
}

//EBENE 2: RECHT WEIT WEG-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//Upper Horizon
draw_sprite_ext(spr_blockoutGreen,0,0,y+32+UpperY,50,1.2,0,c_white,1)

//Pillar Left 1
if pillarY[0] >= 32
{
var pillarX = x+(parallax/100)*power((pillarY[0]*afterErgo-165),2)
var size = pillarY[0]*pillarAcc[0]
draw_sprite_ext(spr_pillar,0,pillarX-5-(pillarY[0]*(pillarAcc[0]*128)),y+pillarY[0]+UpperYP[0],size,size,0,c_white,1)
}

//Pillar Right 1
if pillarY[1] >= 32
{
var pillarX = x+(parallax/100)*power((pillarY[1]*afterErgo-165),2)
var size = pillarY[1]*pillarAcc[1]
draw_sprite_ext(spr_pillar,0,pillarX+5+(pillarY[1]*(pillarAcc[1]*128)),y+pillarY[1]+UpperYP[1],size,size,0,c_white,1)
}

//Pillar Left 2
if pillarY[2] >= 32
{
var pillarX = x+(parallax/100)*power((pillarY[2]*afterErgo-165),2)
var size = pillarY[2]*pillarAcc[2]
draw_sprite_ext(spr_pillar,0,pillarX-5-(pillarY[2]*(pillarAcc[2]*128)),y+pillarY[2]+UpperYP[2],size,size,0,c_white,1)
}

//Pillar Right 2
if pillarY[3] >= 32
{
var pillarX = x+(parallax/100)*power((pillarY[3]*afterErgo-165),2)
var size = pillarY[3]*pillarAcc[3]
draw_sprite_ext(spr_pillar,0,pillarX+5+(pillarY[3]*(pillarAcc[3]*128)),y+pillarY[3]+UpperYP[3],size,size,0,c_white,1)
}


//Upper Quarter
for(i= 32;i<64;i+= 1)
{
ergo = x+(parallax/100)*power((i*afterErgo-165),2)
draw_sprite(sprite_index,i,ergo,y+i+UpperY)
}

//EBENE 3: RECHT NAH-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//Mid Horizon
draw_sprite_ext(spr_blockoutGreen,0,0,y+64+MidY,50,1.2,0,c_white,1)

//Pillar Left 1
if pillarY[0] >= 64
{
var pillarX = x+(parallax/100)*power((pillarY[0]*afterErgo-165),2)
var size = pillarY[0]*pillarAcc[0]
draw_sprite_ext(spr_pillar,0,pillarX-5-(pillarY[0]*(pillarAcc[0]*128)),y+pillarY[0]+MidYP[0],size,size,0,c_white,1)
}

//Pillar Right 1
if pillarY[1] >= 64
{
var pillarX = x+(parallax/100)*power((pillarY[1]*afterErgo-165),2)
var size = pillarY[1]*pillarAcc[1]
draw_sprite_ext(spr_pillar,0,pillarX+5+(pillarY[1]*(pillarAcc[1]*128)),y+pillarY[1]+MidYP[1],size,size,0,c_white,1)
}

//Pillar Left 2
if pillarY[2] >= 64
{
var pillarX = x+(parallax/100)*power((pillarY[2]*afterErgo-165),2)
var size = pillarY[2]*pillarAcc[2]
draw_sprite_ext(spr_pillar,0,pillarX-5-(pillarY[2]*(pillarAcc[2]*128)),y+pillarY[2]+MidYP[2],size,size,0,c_white,1)
}

//Pillar Right 2
if pillarY[3] >= 64
{
var pillarX = x+(parallax/100)*power((pillarY[3]*afterErgo-165),2)
var size = pillarY[3]*pillarAcc[3]
draw_sprite_ext(spr_pillar,0,pillarX+5+(pillarY[3]*(pillarAcc[3]*128)),y+pillarY[3]+MidYP[3],size,size,0,c_white,1)
}


//Mid Quarter
for(i= 64;i<96;i+= 1)
{
ergo = x+(parallax/100)*power((i*afterErgo-165),2)
draw_sprite_ext(sprite_index,i,ergo,y+i+MidY,1,2,0,c_white,1)
}

//EBENE 4: GANZ NAH-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//Low Horizon
draw_sprite_ext(spr_blockoutGreen,0,0,y+96,50,5,0,c_white,1)

//Pillar Left 1
if pillarY[0] >= 96
{
var pillarX = x+(parallax/100)*power((pillarY[0]*afterErgo-165),2)
var size = pillarY[0]*pillarAcc[0]
draw_sprite_ext(spr_pillar,0,pillarX-5-(pillarY[0]*(pillarAcc[0]*128)),y+pillarY[0],size,size,0,c_white,1)
}

//Pillar Right 1
if pillarY[1] >= 96
{
var pillarX = x+(parallax/100)*power((pillarY[1]*afterErgo-165),2)
var size = pillarY[1]*pillarAcc[1]
draw_sprite_ext(spr_pillar,0,pillarX+5+(pillarY[1]*(pillarAcc[1]*128)),y+pillarY[1],size,size,0,c_white,1)
}


//Pillar Left 2
if pillarY[2] >= 96
{
var pillarX = x+(parallax/100)*power((pillarY[2]*afterErgo-165),2)
var size = pillarY[2]*pillarAcc[2]
draw_sprite_ext(spr_pillar,0,pillarX-5-(pillarY[2]*(pillarAcc[2]*128)),y+pillarY[2],size,size,0,c_white,1)
}

//Pillar Right 2
if pillarY[3] >= 96
{
var pillarX = x+(parallax/100)*power((pillarY[3]*afterErgo-165),2)
var size = pillarY[3]*pillarAcc[3]
draw_sprite_ext(spr_pillar,0,pillarX+5+(pillarY[3]*(pillarAcc[3]*128)),y+pillarY[3],size,size,0,c_white,1)
}

//Lower Half
for(i= 96;i<165;i+= 1)
{
ergo = x+(parallax/100)*power((i*afterErgo-165),2)
draw_sprite_ext(sprite_index,i,ergo,y+i,1,3,0,c_white,1)
}


/*
//Pillar Left
var pillarX = x+(parallax/100)*power((pillarY*afterErgo-165),2)
var size = pillarY*pillarAcc
draw_sprite_ext(spr_pillar,0,pillarX-5-(pillarY*(pillarAcc*128)),y+pillarY,size,size,0,c_white,1)

//Pillar Right
var pillarX = x+(parallax/100)*power((pillarY*afterErgo-165),2)
var size = pillarY*pillarAcc
draw_sprite_ext(spr_pillar,0,pillarX+5+(pillarY*(pillarAcc*128)),y+pillarY,size,size,0,c_white,1)
*/


/*KONTINUIERLICHE MAUER. COOL ABER NOT WHAT WE WANT
//Pillar Left
for(i= 6;i<165;i+= 1)
{
ergo = x+(parallax/100)*power((i*afterErgo-165),2)
var size = (i*1)/32
draw_sprite_ext(spr_pillar,0,ergo-20-(i*3),y+i,size,size,0,c_white,1)
}
*/

/*
//Whole Thing
for(i= 0;i<165;i+= 1)
{
ergo = x+(parallax/100)*power((i*afterErgo-165),2)
draw_sprite_ext(sprite_index,i,ergo,y+i,1,1,stretch,c_white,1)
}
*/



draw_text(50,30,string_hash_to_newline("Parallax: "+string(parallax)))
draw_text(50,50,string_hash_to_newline("Multiply: "+string(multiply)))
draw_text(50,70,string_hash_to_newline("Erge: "+string(ergo)))
draw_text(50,90,string_hash_to_newline("AfterErge: "+string(afterErgo)))

draw_text(50,110,string_hash_to_newline("TopY: "+string(TopY)))
draw_text(50,130,string_hash_to_newline("TopYP: "+string(TopYP)))

draw_text(50,150,string_hash_to_newline("UpperY: "+string(UpperY)))
draw_text(50,170,string_hash_to_newline("UpperYP: "+string(UpperYP)))

draw_text(50,190,string_hash_to_newline("MidY: "+string(MidY)))
draw_text(50,210,string_hash_to_newline("MidYP: "+string(MidYP)))



/* */
/*  */
