image_angle -= 5

///Screen Transition
if x < 0
{
room = rLaunchField
x = 6400
y -= 608
}

//Nach unten in die Mine
if y > 608
&& room = rLaunchField
{
instance_destroy()
room = rCutsceneTrapdoor
}

