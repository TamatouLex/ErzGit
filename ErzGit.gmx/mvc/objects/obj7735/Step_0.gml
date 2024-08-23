

///Basic
//Outside Room
scr_changeRoom()


//Create Time
if !instance_exists(timemaster)
{
instance_create(x,y,timemaster)
}

//Sichtbarkeit
if global.lua = 1
{
visible = true
}
else
{
visible = false
}






//IFrames
iframes -= 1

if iframes >= 0
{
iframeflash += 1
if iframeflash = 1
{
if instance_exists(body)
{
body.visible = false
}
if instance_exists(legs)
{
legs.visible = false
}
}
if iframeflash = 2
{
if instance_exists(body)
{
body.visible = true
}
if instance_exists(legs)
{
legs.visible = true
}
iframeflash = 0
}
}

else if iframes <= 0
{
iframeflash = 0
if instance_exists(body)
{
body.visible = true
}
if instance_exists(legs)
{
legs.visible = true
}
}

if hitstun = 0
&& isClimbing = false
{
gravity = baseGravity * global.grav; //player gravity
}

//Er dreht sich in die richtige richtung
if keyboard_check(vk_left)
{
image_xscale = -1
}

if keyboard_check(vk_right)
{
image_xscale = 1
}


movingPlat = instance_place(x,y+1,objMovingPlatform)

//Wenn man den Boden berührt
if place_meeting(x,y,objBlock)
or place_meeting(x,y+1,objBlockInvis)
or place_meeting(x,y+1,objSlopeDownLeft)
or place_meeting(x,y+1,objSlopeDownRight)
or place_meeting(x,y+1,BigTNT)
or (instance_exists(movingPlat) && y+40 < movingPlat.y)
{
groundcount += 1
if instance_exists(cameraflag)
{
cameraflag.y = y
}


if groundcount = 2
{
grounded = true
aircount = 0
}
}

else
{
grounded = false
groundcount = 0
aircount += 1
}



//Jump Button Pressed
if keyboard_check_pressed(vk_shift)
{
aircount = 0
}

if vspeed > 0
{
fall = 1
}
else
{
fall = 0
}

//LADDER RELATED-------------------------------------------------------------
//Ladder Oben
nearLadder = instance_nearest(x,y,ladder)
if place_meeting(x,y+60,nearLadder)
{
//Leiter von Oben
if y < nearLadder.y
{
if keyboard_check(vk_down)
{
isClimbing = true
}
}

//Leiter von Unten
if y > nearLadder.y
{
if keyboard_check(vk_up)
{
isClimbing = true
}
}
}

if isClimbing = true
{

//Spawn the Climb Sprite
if !instance_exists(climb)
{
cl=instance_create(x,y,climb)
}
cl.x = x
cl.y = y

x = lerp(x,nearLadder.x+nearLadder.sprite_width/2,0.3)

//Ladder Controls
if scrButtonCheck(global.upButton)
{
y -= 5
}
else if scrButtonCheck(global.downButton)
{
y += 5
}
gravity = 0
hspeed = 0
vspeed = 0

if scrButtonCheck(global.jumpButton)
{
isClimbing = false
}
}
else// if instance_exists(climb)
{
instance_destroy(climb)
}




//Killt new Hero---------------------------------------------------------------
if instance_exists(objPlayer)
{
instance_destroy(objPlayer)
}

//Wenn er gelandet ist hat er kurzen Stun
if instance_exists(land)
{
landstun += 1
}
if !instance_exists(land)
{
landstun = 99
}
//STOP
if landstun < 10
{
hspeed = 0
}

//Bewegung?! Nur wenn er nicht im Hitstun ist!

if hitstun <= 0
&& landstun > 10
&& isClimbing = false
&& inMinecart = false
{
//check left/right button presses
var L = (scrButtonCheck(global.leftButton) || (global.directionalTapFix && scrButtonCheckPressed(global.leftButton)));
var R = (scrButtonCheck(global.rightButton) || (global.directionalTapFix && scrButtonCheckPressed(global.rightButton)));

var h = 0;

if (!frozen)    //don't move if frozen
{
    if (R)
    && rightBlock = false //Ob er auch nach Rechts darf
        h = 1;
    else if (L)
    && leftBlock = false //Ob er auch nach Links darf
        h = -1;
}

var slipBlockTouching = instance_place(x,y+(1*global.grav),objSlipBlock);   //check if on a slip block

//vine checks
var notOnBlock = (place_free(x,y+(global.grav)));
var onVineL = (place_meeting(x-1,y,objWalljumpL) && notOnBlock);
var onVineR = (place_meeting(x+1,y,objWalljumpR) && notOnBlock);

if (h != 0)  //player is moving
{
    if (!onVineR && !onVineL)   //make sure not currently touching a vine
    {
        xScale = h;
    }
    if ((h == -1 && !onVineR) || (h == 1 && !onVineL))
    {
        if (slipBlockTouching == noone) //not touching a slip block, move immediately at full speed
        {
            hspeed = maxSpeed * h;
        }
        else    //touching a slip block, use acceleration
        {
            hspeed += (slipBlockTouching.slip) * h;
            
            if (abs(hspeed) > maxSpeed)
                hspeed = maxSpeed * h;
        }
        
        //sprite_index = sprPlayerRunning;
        image_speed = 0.5;
    }
}
else    //player is not moving
{
    if (slipBlockTouching == noone) //not touching a slip block, stop immediately
        hspeed = 0;
    else    //touching a slip block, slow down
    {
        if (hspeed > 0)
        {
            hspeed -= slipBlockTouching.slip;
            
            if (hspeed <= 0)
                hspeed = 0;
        }
        else if (hspeed < 0)
        {
            hspeed += slipBlockTouching.slip;
            
            if (hspeed >= 0)
                hspeed = 0;
        }
    }
  
    //sprite_index = sprPlayerIdle;
    image_speed = 0.2;
}


if (!onPlatform)    //check if standing on a platform
{
    if((vspeed * global.grav) < -0.05)
    {
    //sprite_index = sprPlayerJump;
    }
    else if((vspeed * global.grav) > 0.05)
    {
    //sprite_index = sprPlayerFall;
    }
}
else
{


    if (!place_meeting(x,y+(4*global.grav),objPlatform)) {onPlatform = false;}
}

var slideBlockTouching = instance_place(x,y+(global.grav),objSlideBlock);   //check if on a slide block

if (slideBlockTouching != noone)    //on a slide block, start moving with it
    hspeed += slideBlockTouching.h;

if (abs(vspeed) > maxVspeed) {vspeed = sign(vspeed)*maxVspeed;} //check if moving vertically faster than max speed

if (!frozen)    //check if frozen before doing anything
{

      if (scrButtonCheckPressed(global.jumpButton))
    {
           scr7735Jump();
    }
    if (scrButtonCheckReleased(global.jumpButton))
    {
            scrPlayerVJump();
    }
    if (scrButtonCheckPressed(global.suicideButton))
        {
        scrKillPlayer();
        }
}

if (global.adAlign && place_meeting(x,y+(global.grav),objBlock) && !frozen)  // A/D align
{
    if (scrButtonCheckPressed(global.alignLeftButton)) {hspeed -= 1;}
    if (scrButtonCheckPressed(global.alignRightButton)) {hspeed += 1;}
}


//walljumps

if (onVineL || onVineR)
{
    if (onVineR)
        xScale = -1;
    else
        xScale = 1;
    
    vspeed = 2 * global.grav;
    //sprite_index = sprPlayerSliding;
    image_speed = 1/2;
    
    //pressed away from the vine
    if (onVineL && scrButtonCheckPressed(global.rightButton)) || (onVineR && scrButtonCheckPressed(global.leftButton))
    {
        if (scrButtonCheck(global.jumpButton))  //jumping off vine
        {
            if (onVineR)
                hspeed = -15;
            else
                hspeed = 15;
            
            vspeed = -9 * global.grav;
            audio_play_sound(sndWallJump,0,false);
            //sprite_index = sprPlayerJump;
        }
        else    //moving off vine
        {
            if (onVineR)
                hspeed = -3;
            else
                hspeed = 3;
            
            //sprite_index = sprPlayerFall;
        }
    }
}





//SLOPES--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
slopeR = instance_place(x,y-3,objSlopeDownRight)
slopeL = instance_place(x,y-3,objSlopeDownLeft)



            if place_meeting(x,y+1,objSlopeDownLeft)
            || place_meeting(x,y+1,objSlopeDownRight)
            {
            isOnSlope = true
            }
            
            else
            {
            isOnSlope = false
            }
            
            if place_meeting(x,y+1,objSlopeDownLeft)
            {
            momentum += 0.7
            noSlopeCounter = 0
            }
            
            else if place_meeting(x,y+1,objSlopeDownRight)
            {
            momentum -= 0.7
            noSlopeCounter = 0
            }
            
            //BUMP AGAINST RIGHT WALL
            else if (place_meeting(x+3,y,objBlock) && (momentum > 6))
            {
            hitstun = 1
            iframes = 50
            hspeed = -3.5
            momentum = 0
            vspeed = -5.5
            }
            
            //BUMP AGAINST LEFT WALL
            else if (place_meeting(x-3,y,objBlock) && (momentum < -6))
            {
            hitstun = 1
            iframes = 50
            hspeed = 3.5
            momentum = 0
            vspeed = -5.5
            }
            
            else if (
            (scrButtonCheck(global.leftButton) && momentum > 0)
            || (scrButtonCheck(global.rightButton) && momentum < 0))
            {
            momentum *= 0.9
            }
            
            else if grounded = true
            {
            momentum *= 0.9
            }
            
            hspeed = hspeed+momentum


if (instance_exists(objSlope) && hspeed != 0)
{
    var moveLimit = abs(hspeed);    //sets how high/low the player can go to snap onto a slope, this can be increased to make the player able to run over steeper slopes (ie setting it to abs(hspeed)*2 allows the player to run over slopes twice as steep)
    
    var slopeCheck;
    var hTest;
    
    var ySlope;
    
    //falling onto a slope
    if (place_meeting(x+hspeed,y+vspeed+gravity,objSlope) && (vspeed+gravity)*global.grav > 0 && notOnBlock)
    {
        var xLast = x
        var yLast = y;
        var hLast = hspeed
        var vLast = vspeed;
        
        vspeed += gravity;
        
        x += hspeed;
        hspeed = 0;
        
        if(!place_free(x,y+vspeed))
        {
            if (global.grav == 1)   //normal
                move_contact_solid(270,abs(vspeed));
            else    //flipped
                move_contact_solid(90,abs(vspeed));
            vspeed = 0;
        }
        
        y += vspeed;            
        
        if (!place_free(x,y+(global.grav)) && place_free(x,y))  //snapped onto the slope properly
        {
            djump = 0//1;
            notOnBlock = false;
        }
        else    //did not snap onto the slope, return to previous position
        {
            x = xLast;
            y = yLast;
            hspeed = hLast;
            vspeed = vLast;
        }
    }
    
    //moving down a slope
    if (!notOnBlock)
    {
        var onSlope = (place_meeting(x,y+(global.grav),objSlope));    //treat normal blocks the same as slopes if we're standing on a slope
        
        slopeCheck = true;
        hTest = hspeed
        
        while (slopeCheck)
        {
            ySlope = 0;
            //check how far we should move down
            while ((!place_meeting(x+hTest,y-ySlope+(global.grav),objSlope) || (onSlope && !place_meeting(x+hTest,y-ySlope+(global.grav),objBlock))) && ySlope*global.grav > -floor(moveLimit*(hTest/hspeed)))
            {
                ySlope -= global.grav;
            }
            
            //check if we actually need to move down
            if (place_meeting(x+hTest,y-ySlope+(global.grav),objSlope) || (onSlope && place_meeting(x+hTest,y-ySlope+(global.grav),objBlock)))
            {
            
            
                if (ySlope != 0 && !place_meeting(x+hTest,y-ySlope,objBlock))
                {
                    y -= ySlope;
                    
                    x += hTest;
                    hspeed = 0;
                    
                    slopeCheck = false;
                }
                else
                {
                    if (hTest > 0)
                    {
                        hTest -= 1;
                        if (hTest <= 0)
                            slopeCheck = false;
                    }
                    else if (hTest < 0)
                    {
                        hTest += 1;
                        if (hTest >= 0)
                            slopeCheck = false;
                    }
                    else
                    {
                        slopeCheck = false;
                    }
                }
            }
            else
            {
                slopeCheck = false;
            }
        }
    }
    
    //moving up a slope
    if (place_meeting(x+hspeed,y,objSlope))
    {
        slopeCheck = true;
        hTest = hspeed;
        
        while (slopeCheck)
        {
            ySlope = 0;
            
            //check how far we have to move up
            while (place_meeting(x+hTest,y-ySlope,objSlope) && ySlope*global.grav < floor(moveLimit*(hTest/hspeed)))
            {
                ySlope += global.grav;
            }
            
            //check if we actually need to move up
            if (place_free(x+hTest,y-ySlope))
            {            
                y -= ySlope;
                
                x += hTest;
                hspeed = 0;
                
                slopeCheck = false;
            }
            else
            {
                if (hTest > 0)
                {
                    hTest -= 1;
                    if (hTest <= 0)
                        slopeCheck = false;
                }
                else if (hTest < 0)
                {
                    hTest += 1;
                    if (hTest >= 0)
                        slopeCheck = false;
                }
                else
                {
                    slopeCheck = false;
                }
            }
        }
    }
    
    //set xprevious/yprevious coordinates for future solid collisions
    xprevious = x;
    yprevious = y;
}
}

if isOnSlope = true
{
//scr_debug()
}

///Dance
if dance = true
{
vspeed = 0
hspeed = 0
gravity = 0

danceCount += 1

if danceCount >= 50
{
dance = false
danceCount = 0
}
}

///SHOOTING
if (scrButtonCheckPressed(global.shootButton))
{
if instance_number(stone) < 2
{
//Stone!
if global.curweapon = 0
{
if image_xscale >= 0
{
s=instance_create(x-30,y-20,stone)
s.hspeed = 12
s.vspeed = -2
}
else if image_xscale < 0
{
s=instance_create(x+30,y-20,stone)
s.hspeed = -12
s.vspeed = -2
}
}
}

//Knife!!
if global.curweapon = 1
{
if image_xscale >= 0
{
s=instance_create(x-30,y-20,knife)
s.image_xscale = 2
s.hspeed = 20
}
else if image_xscale < 0
{
s=instance_create(x+30,y-20,knife)
s.image_xscale = -2
s.hspeed = -20
}
}

}

///Carry
if canCarry = true
&& (scrButtonCheckPressed(global.carryButton))
{
vspeed = 0
carry = instance_create(x-48,y+50,objMovingPlatform)
carry.isCarry = true
carry.image_xscale = 3
canCarry = false
}


//Carry Replenish
if place_meeting(x,y+1,objBlockInvis)
{
canCarry = true
}


