/// @description initializes all global variables needed for the game

scrSetGlobalOptions();       //initialize global game options
global.chadhp = 3
global.curweapon = 0 //Welche Waffe er gerade hat
global.lua = 0

//Misc
global.landcount = 80 //Wie lang er fallen muss für die lande animation

//Saveslots Display
global.slot1frame = 0
global.slot2frame = 0
global.slot3frame = 0

//Time:
global.framecount = 0
global.sec = 0
global.minute = 0
global.hour = 0

//Abilities
global.canDoubleJump = false

//Events:
global.eventsfound = 0
global.eventscleared = 0

global.EkillTheBLB = 0
global.EmeetBangAtHQ = 0
global.ElearnDoubleJump = 0
global.EfindTNT = 0
global.EexplodeDoor = 0
global.EsneakThroughGarden = 0
global.Erecue7777 = 0
global.EfitIntoGaps = 0
global.EkillAaron = 0
global.EkillKevin = 0
global.EkillMudkipz = 0
global.EkillNeko = 0



//Progression Stuff
global.TNTinKarre = false
global.TNTonMap = false

/*
//Side
for (i=0;i<99;i++)
{
global.sbevent[i] = 0
}
*/

/*
//Main
for (i=0;i<99;i++)
{
global.sevent[i] = 1
}


global.sevent1 = 0
global.sevent2 = 0
global.sevent3 = 0
global.sevent4 = 0
global.sevent5 = 0
global.sevent6 = 0
global.sevent7 = 0
global.sevent8 = 0
global.sevent9 = 0
global.sevent10 = 0
global.sevent11 = 0
global.sevent12 = 0
global.sevent13 = 0
*/

//War schon in der Engine:
global.savenum = 1;
global.difficulty = 0;  //0 = medium, 1 = hard, 2 = very hard, 3 = impossible
global.death = 0;
global.time = 0;
global.timeMicro = 0;
global.saveRoom = "";
global.savePlayerX = 0;
global.savePlayerY = 0;
global.grav = 1;
global.saveGrav = 1;

for (var i = global.secretItemTotal-1; i >= 0; i--)
{
    global.secretItem[i] = false;
    global.saveSecretItem[i] = false;
}

for (var i = global.bossItemTotal-1; i >= 0; i--)
{
    global.bossItem[i] = false;
    global.saveBossItem[i] = false;
}

global.gameClear = false;
global.saveGameClear = false;

for (var i = 99; i >= 0; i--)
{
    global.trigger[i] = false;
}

global.gameStarted = false;     //determines whether the game is in progress (enables saving, restarting, etc.)
global.noPause = false;         //sets whether or not to allow pausing (useful for bosses to prevent desync)
global.autosave = false;        //keeps track of whether or not to autosave the next time the player is created
global.noDeath = false;         //keeps track of whether to give the player god mode
global.infJump = false;         //keeps track of whether to give the player infinite jump

global.gamePaused = false;      //keeps track of whether the game is paused or not
global.pauseSurf = -1;       //stores the screen surface when the game is paused
global.pauseDelay = 0;      //sets pause delay so that the player can't quickly pause buffer

global.currentMusicID = -1;  //keeps track of what song the current music is
global.currentMusic = -1;    //keeps track of current main music instance
global.deathSound = -1;     //keeps track of death sound when the player dies
global.gameOverMusic = -1;   //keeps track of game over music instance
global.musicFading = false;     //keeps track of whether the music is being currently faded out
global.currentGain = 0;     //keeps track of current track gain when a song is being faded out

global.menuSelectPrev[0] = 0;     //keeps track of the previously selected option when navigating away from the difficulty menu
global.menuSelectPrev[1] = 0;     //keeps track of the previously selected option when navigating away from the options menu

//get the default window size
global.windowWidth = surface_get_width(application_surface);
global.windowHeight = surface_get_height(application_surface);

//keeps track of previous window position/size when display_reset is used for setting vsync
global.windowXPrev = 0;
global.windowYPrev = 0;
global.windowWidthPrev = 0;
global.windowHeightPrev = 0;

display_set_gui_size(surface_get_width(application_surface),surface_get_height(application_surface));  //set the correct gui size for the Draw GUI event

global.controllerMode = false;  //keeps track of whether to use keyboard or controller
global.controllerDelay = -1;    //handles delay between switching between keyboard/controller so that the player can't use both at the same time

randomize();    //make sure the game starts with a random seed for RNG
