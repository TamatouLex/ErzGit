if instance_exists(objPlayer)
{
if objPlayer.y < 420
&& objPlayer.x < 80
&& ghostMode = false
{
instance_activate_object(centerGhostBall)
instance_activate_object(innerGhostBall)
instance_activate_object(outerGhostBall)

instance_activate_object(geist)

//Spikes
instance_activate_object(BspikeU)
instance_activate_object(BspikeD)
instance_activate_object(BspikeR)
instance_activate_object(BspikeL)

ghostMode = true
}
}

