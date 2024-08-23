//Snap to Lader at Screen Transition
if isClimbing = true
{
nearLadder = instance_nearest(x,y,ladder)
if instance_exists(nearLadder)
{
x = nearLadder.x + nearLadder.sprite_width/2
}
}

