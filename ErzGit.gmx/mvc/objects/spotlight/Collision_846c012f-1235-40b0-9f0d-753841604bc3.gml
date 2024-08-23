if scrButtonCheck(global.shootButton)
&& active = true
&& obj7735.dance = false
{
obj7735.dance = true
obj7735.y -= 5

count = maxCount - 50
}


//Wenn er tanzt lerpt er zur Position
if obj7735.dance = true
{
obj7735.x = lerp(obj7735.x,x,0.3)
obj7735.y = lerp(obj7735.y,y,0.3)
}

