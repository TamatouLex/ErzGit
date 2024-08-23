global.gameStarted = false; //Disabled den R to Restart button

wentLeft = false //Bei Left Screen Transitions warpt er an richtige Stelle bei Room Start

isOnSlope = false //Ob er gerade auf einer Slope ist
isPushing = false //Ob er gerade etwas pusht/pullt
pushObject = false

canLeaveRoom = true //Wenn false kann er Raum nicht verlassen

dance = false //Wenn true geht er in random Tanz Animation
danceCount = 0 //Dance duration

landstun = 0
aircount = 0

nearLadder = noone
isClimbing = false //Soll integriert werden
inMinecart = false //Ob er in einem Minecart sitzt
minecartID = noone //ID vom dem Minecart in dem er sich befindet

grounded = false
groundcount = 0

rightBlock = false
leftBlock = false

noSlopeCounter = 0 //Timer wie lange er nicht auf einer Slope ist. Notwendig um zu versichern dass er nicht auf der Slope blöd ist

//Ability Related
canCarry = true

//Platform Check
movingPlat = 0
slope = 0

fall = 0
hitstun = 0
iframes = 0

if !instance_exists(camera)
{
instance_create(x,y,camera)
}

if !instance_exists(eyesneut)
{
instance_create(x,y,eyesneut)
}

if !instance_exists(mundneut)
{
instance_create(x,y,mundneut)
}


if !instance_exists(lrun)
{
legs=instance_create(x,y,lrun)
}
if !instance_exists(krun)
{
body=instance_create(x,y,krun)
}


frozen = false; //sets if the player can move or not

jump = 11 * global.grav; //set how fast the player jumps
jump2 = 10 * global.grav; //sets how fast the player double jumps
baseGravity = 0.5 * global.grav;
//gravity = 0.6 * global.grav; //player gravity

momentum = 0 //Player bekommt Momentum wenn er von moving Stuff abspringt oder aus einer Slope
djump = 1; //allow the player to double jump as soon as he spawns
maxSpeed = 6;   //max horizontal speed
maxVspeed = 15;  //max vertical speed
image_speed = 0.2; //initial speed of animation
onPlatform = false; //sets if player is currently standing on a platform

xScale = 1; //sets the direction the player is facing (1 is facing right, -1 is facing left)

scr_Set7735Mask(); //set the player's hitbox

if (global.difficulty == 0 && global.gameStarted)   //create the player's bow
    instance_create(x,y,objBow);

if (global.autosave) //save the game if currently set to autosave
{
    scrSaveGame(true);
    global.autosave = false;
}

