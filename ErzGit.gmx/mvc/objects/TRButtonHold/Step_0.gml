if place_meeting(x,y-2,obj7735)
{
active = true
image_index = 1
}
else
{
active = false
image_index = 0
}



//DIFFERENT KINDS:

//0: Activate TNT Piston
if kind = 0 && active = true
{
pistonV.active = true
}


//1: Remove Baricade----------------------------------------------------------------------------------------
if kind = 1
{
if active = true
{
//Deactivate Barricade
with(TNTBarricade)
{
if kind = 1
{
open = true
}
}
}
else //Button Not active
{
//Deactivate Barricade
with(TNTBarricade)
{
if kind = 1
{
open = false
}
}
}
}

//2: Remove Quad Baricades----------------------------------------------------------------------------------------
if kind = 2
{
if active = true
{
//Deactivate Barricade
with(TNTBarricade)
{
if kind = 2
{
open = true
}
}
}
else //Button Not active
{
//Deactivate Barricade
with(TNTBarricade)
{
if kind = 2
{
open = false
}
}
}
}
//3. Remove Quad Baricades 2----------------------------------------------------------------------------------------
if kind = 3
{
if active = true
{
//Deactivate Barricade
with(TNTBarricade)
{
if kind = 3
{
open = true
}
}
}
else //Button Not active
{
//Deactivate Barricade
with(TNTBarricade)
{
if kind = 3
{
open = false
}
}
}
}

//4: Activate Wind and Conveyor Belt----------------------------------------------------------------------------------------
if kind = 4
{
    if active = true
    {
        //Activate Belt
        with(conveyorBelt)
        {
            if kind = 4
            {
                dir = 3
            }
        }
        with(windLeft)
        {
            active = true
        }
    }
    
    else //Button Not active
    {
        //Deactivate Barricade
        with(conveyorBelt)
        {
            if kind = 4
            {
                dir = 0
            }
        }
        with(windLeft)
        {
            active = false
        }
    }
}


//5: GO Conveyor Belt----------------------------------------------------------------------------------------
if kind = 5
{
    if active = true
    {
        //Activate Belt
        with(conveyorBelt)
        {
            if kind = 5
            {
                dir = 3
            }
        }
    }
}
//6 STOP Conveyor Belt---------------------------------------------------------------------------------------
if kind = 6
{
    if active = true
    {
        //Activate Belt
        with(conveyorBelt)
        {
            if kind = 5
            {
                dir = 0
            }
        }
    }
}

//7: Move Cursor Left----------------------------------------------------------------------------------------
if kind = 7
{
if active = true //ACTIVE
{
if tap = false
{
with(TNTCursor)
{
if hSpot > 0
{
hSpot -= 1
}
}
tap = true
}
}

else //NOT ACTIVE
{
tap = false
}
}
//8: Move Cursor Down----------------------------------------------------------------------------------------
if kind = 8
{
if active = true //ACTIVE
{
if tap = false
{
tap = true
with(TNTCursor)
{
if vSpot < 2
{
vSpot += 1
}
}
}
}

else //NOT ACTIVE
{
tap = false
}
}
//9: Move Cursor Up----------------------------------------------------------------------------------------
if kind = 9
{
if active = true //ACTIVE
{
if tap = false
{
tap = true
with(TNTCursor)
{
if vSpot > 0
{
vSpot -= 1
}
}
}
}

else //NOT ACTIVE
{
tap = false
}
}
//10: Move Cursor Right----------------------------------------------------------------------------------------
if kind = 10
{
if active = true //ACTIVE
{
if tap = false
{
tap = true
with(TNTCursor)
{
if hSpot < 2
{
hSpot += 1
}
}
}
}

else //NOT ACTIVE
{
tap = false
}
}
//11: Confirm----------------------------------------------------------------------------------------
if kind = 11
{
if active = true //ACTIVE
{
if tap = false
{
tap = true
with(TNTCursor)
{
//Treffer
if place_meeting(x,y,TNTScreenTarget)
{
TNTScreenTarget.hit = true
}
}
}
}

else //NOT ACTIVE
{
tap = false
}
}

