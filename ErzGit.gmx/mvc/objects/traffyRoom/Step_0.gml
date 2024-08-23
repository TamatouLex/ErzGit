if image_xscale < 1
{
image_xscale += 0.1
image_yscale += 0.1
}


//Warp to Wyatt Room
if place_meeting(x,y,objPlayer)
{
room = rWyatt
objPlayer.x = 64
objPlayer.y = 500

}

