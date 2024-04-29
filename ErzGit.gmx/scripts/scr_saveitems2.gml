//Open Save File
ini_open("saveitems2.ini");

//Save Stats
ini_write_real("stats","health",global.chadhp);

//Save Time
ini_write_real("Time","Frame",global.framecount)
ini_write_real("Sec","Sec",global.sec)
ini_write_real("Min","Min",global.minute)
ini_write_real("Hour","Hour",global.hour)


//Save Items
ini_write_real("weapons","curweapon",global.curweapon);

//Events
ini_write_real("events","found",global.eventsfound)
ini_write_real("events","cleared",global.eventscleared)
ini_write_real("events","event1",global.sevent1);
ini_write_real("events","bevent1",global.sbevent1);


//Close the file
ini_close();
