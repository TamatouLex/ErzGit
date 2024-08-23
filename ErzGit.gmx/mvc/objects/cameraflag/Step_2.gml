//Sichtbarkeit
if global.lua = 1
{
visible = true
}
else
{
visible = false
}

if instance_exists(obj7735)
{
x = obj7735.x

//Wenn Player unter Flagge ist, geht Flagge runter
if y < obj7735.y-5
{
y = lerp(y,obj7735.y,0.2)
}

}

else if instance_exists(slingshot)
{
x = lerp(x,slingshot.x,0.2)
y = lerp(y,slingshot.y-70,0.2)
}

else if instance_exists(playerLaunched)
{
x = lerp(x,playerLaunched.x,0.3)
y = lerp(y,playerLaunched.y,0.3)
}


if instance_exists(obj7735)
&& obj7735.isClimbing = true
{
x = lerp(x,obj7735.x,0.2)
y = lerp(y,obj7735.y,0.2)
}

