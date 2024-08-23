/// @description Minecart
if inMinecart = true
&& instance_exists(minecartID)
{
if !instance_exists(kMinecart)
{
instance_create(x,y,kMinecart)
instance_destroy(kump)
instance_destroy(kall)
instance_destroy(kidle)
instance_destroy(krun)

instance_destroy(lump)
instance_destroy(lall)
}
x = lerp(x,minecartID.x+64,0.5)
y = minecartID.y
hspeed = 0
momentum = 0

}





//Animation
if instance_exists(krun)
{
krun.x = x
krun.y = y+15
}

if instance_exists(lrun)
{
lrun.x = x
lrun.y = y+15
}

if instance_exists(kump)
{
kump.x = x
kump.y = y+15
}

if instance_exists(lump)
{
lump.x = x
lump.y = y+15
}

if instance_exists(kall)
{
kall.x = x
kall.y = y+15
}

if instance_exists(lall)
{
lall.x = x
lall.y = y+15
}

if instance_exists(kshoot)
{
kshoot.x = x
kshoot.y = y+15
}

if instance_exists(lidle)
{
lidle.x = x
lidle.y = y+15
}

if instance_exists(kidle)
{
kidle.x = x
kidle.y = y+15
}

if instance_exists(kMinecart)
{
kMinecart.x = x
kMinecart.y = y+15
}



if ((x < 0 || x > room_width || y < 0 || y > room_height) && global.edgeDeath)  //check if player has left the room
    scrKillPlayer();

//update player sprite
if (global.playerAnimationFix)
{
    //block/vine checks
    var notOnBlock = (place_free(x,y+(global.grav)));
    var onVineR = (place_meeting(x+1,y,objWalljumpR) && notOnBlock);
    var onVineL = (place_meeting(x-1,y,objWalljumpL) && notOnBlock);
    
    if (!onVineR && !onVineL)   //not touching any vines
    {
        if (onPlatform || !notOnBlock)  //standing on something
        {
            //check if moving left/right
            var L = (scrButtonCheck(global.leftButton) || (global.directionalTapFix && scrButtonCheckPressed(global.leftButton)));
            var R = (scrButtonCheck(global.rightButton) || (global.directionalTapFix && scrButtonCheckPressed(global.rightButton)));
            
            if ((L || R) && !frozen)
            {
               // sprite_index = sprPlayerRunning;
                image_speed = 1/2;
            }
            else
            {
               // sprite_index = sprPlayerIdle;
                image_speed = 1/5;
            }
        }
        else    //in the air
        { 
            if ((vspeed * global.grav) < 0)
            {
             //   sprite_index = sprPlayerJump;
                image_speed = 1/2;
            }
            else
            {
             //   sprite_index = sprPlayerFall;
                image_speed = 1/2;
            }
        }
    }
    else    //touching a vine
    {
      //  sprite_index = sprPlayerSliding;
        image_speed = 1/2;
    }
}


