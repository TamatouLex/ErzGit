///gets which song is supposed to be playing for the current room and plays it

var roomSong;

switch (room)                       //determines which song to play
{
    
    case rTitle:                    //add rooms here, if you have several rooms that play the same song they can be put together
    case rMenu:
    case rOptions:
    case rDifficultySelect:
    case rStage01:
    //case rStage02:                //this room has a play music object in it so it doesnt need to be included in this script
        roomSong = musGuyRock;
        break;
                              //make sure to always put a break after setting the song
    case rCherryBoss:
        roomSong = musMegaman;
        break;

        
        //DRASCHEPARK
    case rDcaveexit:
    case rDtree:
    case rDbabybarentrance:
    case rDtreetops:
    case rDtreetops2:
    case rDdrascheentrance:
    case rDbmxbahn:
    case rDwald:
    case rDbang:
    case rDraschestairs:
//    roomSong = musDrasche;
    roomSong = musDrasche;
       break;
        
        //PRATER
    case rPEntrance:
    case rPSombreo:
    case rPDinoHouse:
    case rPFunball:
    case rPFunWater:
    case rPFunBoxing:
    case rPBallBall:
    case rPBistroBox:
    case rPRiesenradPlaza:
    case rPArcade:
    case rPBlumenrad:
    roomSong = musIlona;
    break;
    
    //SEWERS
    case rSewerEntrance:
    case rSewerPond:
    case rSewerPits:
    case rSewerAirVents:
    case rSewerAirVents2:
    case rSewerUpDown:
    case rSewerSlide:
    case rSewerLowerSlide:
    case rSewerPandy:
    case rSewerDoubleJumps:
    roomSong = musSewers
    break;
    
    case rMiku:
        roomSong = -2;              //don't change the music in any way (the Miku object plays it)
        break;
        
    case rEnd:
        roomSong = -1;              //play nothing
        break;
        
    default:                        //default option in case the room does not have a song set
        roomSong = -1;
        break;
}

if (roomSong != -2)
    scrPlayMusic(roomSong,true); //play the song for the current room
