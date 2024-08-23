/// @description draw the player
draw_text(x,y+20,string_hash_to_newline("Momentum: " +string(momentum)))
draw_text(x,y+50,string_hash_to_newline("No Slope: " +string(noSlopeCounter)))


var drawX = x;
var drawY = y;

if (global.grav == -1)      //need to draw the player a pixel off in the y-axis when flipped for some reason
    drawY += 1;

draw_sprite_ext(sprite_index,image_index,drawX,drawY,image_xscale*xScale,image_yscale*global.grav,image_angle,image_blend,image_alpha);

//draw the player's hitbox
if (global.debugShowHitbox)
    draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.8);
    
    /*
    draw_text(x,y,hitstun)
    
    draw_text(x,y+20,"Room Height: " + string(room_height))
    draw_text(x,y+40,"Y: " +string(y))
    draw_text(x,y+60,"LeftLane: " +string(camera.leftLane))
    draw_text(x,y+80,"RightLane: " +string(camera.rightLane))
    
    
    

/* */
/*  */
