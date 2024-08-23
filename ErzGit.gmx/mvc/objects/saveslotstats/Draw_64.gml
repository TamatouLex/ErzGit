scr_displaytime()

//SLOT 1
if global.slot1hour < 10
{
slot11dishour = "0"+string(global.slot1hour)
}
else
{
slot1dishour = global.slot1hour
}
if global.slot1minute < 10
{
slot1disminute = "0"+string(global.slot1minute)
}
else
{
slot1disminute = global.slot1minute
}

if global.slot1sec < 10
{
slot1dissec = "0"+string(global.slot1sec)
}
else
{
slot1dissec = global.slot1sec
}



draw_text(96,192,string_hash_to_newline("Time: "+string(slot1dishour)+":"+string(slot1disminute)+":"+string(slot1dissec)))
draw_text(96,224,string_hash_to_newline("Events: "+string(global.slot1eventscleared)+" / "+string(global.slot1eventsfound)))


//SLOT 2
if global.slot2hour < 10
{
slot21dishour = "0"+string(global.slot2hour)
}
else
{
slot2dishour = global.slot2hour
}
if global.slot2minute < 10
{
slot2disminute = "0"+string(global.slot2minute)
}
else
{
slot2disminute = global.slot2minute
}

if global.slot2sec < 10
{
slot2dissec = "0"+string(global.slot2sec)
}
else
{
slot2dissec = global.slot2sec
}


draw_text(352,192,string_hash_to_newline("Time: "+string(slot2dishour)+":"+string(slot2disminute)+":"+string(slot2dissec)))
draw_text(352,224,string_hash_to_newline("Events: "+string(global.slot2eventscleared)+" / "+string(global.slot2eventsfound)))







//SLOT 3
if global.slot3hour < 10
{
slot31dishour = "0"+string(global.slot3hour)
}
else
{
slot3dishour = global.slot3hour
}
if global.slot3minute < 10
{
slot3disminute = "0"+string(global.slot3minute)
}
else
{
slot3disminute = global.slot3minute
}

if global.slot3sec < 10
{
slot3dissec = "0"+string(global.slot3sec)
}
else
{
slot3dissec = global.slot3sec
}


draw_text(608,192,string_hash_to_newline("Time: "+string(slot3dishour)+":"+string(slot3disminute)+":"+string(slot3dissec)))
draw_text(608,224,string_hash_to_newline("Events: "+string(global.slot3eventscleared)+" / "+string(global.slot3eventsfound)))



