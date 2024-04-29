ini_open("saveitems2.ini");

//Load Stats
global.chadhp = ini_read_real("stats","health",3)

//Load Time
global.framecount = ini_read_real("Time","Frame",0)
global.sec = ini_read_real("Sec","Sec",0)
global.minute = ini_read_real("Min","Min",0)
global.hour = ini_read_real("Hour","Hour",0)

//Load Items
global.curweapon = ini_read_real("weapons","curweapon",0)

//Events
global.eventsfound = ini_read_real("events","found",0)
global.eventscleared = ini_read_real("events","cleared",0)
global.sevent1 = ini_read_real("events","event1",0)
global.sbevent1 = ini_read_real("events","bevent1",0)

ini_close();
