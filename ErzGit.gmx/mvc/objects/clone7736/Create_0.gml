state = 0 //His Current Action

waitTime = 0 //Idle time before he does something

chargeTime = 0 //Wind Up to Big and Triple Shot
triplePattern = 0 //Which Triple Shot Pattern he gives you

tauntTime = 0 //How long his Taunt lasts

walkTime = 0 //How long he walks
walkDir = irandom(1) //In which direction he walks

dashDuration = 0
dashDurationMax = 300
dashCountdown = irandom_range(400,600)
maxDashSpeed = 12

tiredCount = 0
tiredCountMax = 200

jumpWindup = 0
landCount = 0

//7735 kann Raum dann nichtmehr verlassen
obj7735.canLeaveRoom = false


