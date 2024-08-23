ini_open("saveitems1.ini");
//Load Time
global.slot1frame = ini_read_real("Time","Frame",0)
global.slot1sec = ini_read_real("Sec","Sec",0)
global.slot1minute = ini_read_real("Min","Min",0)
global.slot1hour = ini_read_real("Hour","Hour",0)
global.slot1hp = ini_read_real("stats","health",3)

global.slot1eventsfound = ini_read_real("events","found",0)
global.slot1eventscleared = ini_read_real("events","cleared",0)
ini_close();


ini_open("saveitems2.ini");
//Load Time
global.slot2frame = ini_read_real("Time","Frame",0)
global.slot2sec = ini_read_real("Sec","Sec",0)
global.slot2minute = ini_read_real("Min","Min",0)
global.slot2hour = ini_read_real("Hour","Hour",0)
global.slot2hp = ini_read_real("stats","health",3)

global.slot2eventsfound = ini_read_real("events","found",0)
global.slot2eventscleared = ini_read_real("events","cleared",0)
ini_close();


ini_open("saveitems3.ini");
//Load Time
global.slot3frame = ini_read_real("Time","Frame",0)
global.slot3sec = ini_read_real("Sec","Sec",0)
global.slot3minute = ini_read_real("Min","Min",0)
global.slot3hour = ini_read_real("Hour","Hour",0)
global.slot3hp = ini_read_real("stats","health",3)

global.slot3eventsfound = ini_read_real("events","found",0)
global.slot3eventscleared = ini_read_real("events","cleared",0)
ini_close();
