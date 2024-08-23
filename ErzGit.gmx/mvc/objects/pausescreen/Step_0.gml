
//Inventory-------------------------------------------------------------
if submenu = 0
and !instance_exists(obj7735inv)
{
//Destroy
instance_destroy(eventcount)
instance_destroy(cursorevents)
instance_destroy(objeventstext)
instance_destroy(objdesctext)

instance_destroy(saveslotstats)
instance_destroy(saveboxdach)
instance_destroy(saveboxboden)
instance_destroy(saveboxlinke)
instance_destroy(saveboxrechte)

//Create
instance_create(x,y,obj7735inv)
instance_create(x,y,stoneitem)
instance_create(x,y,knifeitem)
instance_create(x,y,dummyitem)
instance_create(x,y,dummyitem2)
instance_create(x,y,equipweapon)
submenu = 99
}



//Events-------------------------------------------------------------
else if submenu = 1
and !instance_exists(eventcount)
{
//Destroy
instance_destroy(obj7735inv)
instance_destroy(stoneitem)
instance_destroy(knifeitem)
instance_destroy(dummyitem)
instance_destroy(dummyitem2)
instance_destroy(cursor)
instance_destroy(equipweapon)
//instance_destroy(objeventstext)

instance_destroy(saveslotstats)
instance_destroy(saveboxdach)
instance_destroy(saveboxboden)
instance_destroy(saveboxlinke)
instance_destroy(saveboxrechte)


//Create
instance_create(x,y,eventcount)
submenu = 99
}



//Load / Save-------------------------------------------------------------
else if submenu = 2
and !instance_exists(saveslotstats)
{
//Destroy
instance_destroy(obj7735inv)
instance_destroy(stoneitem)
instance_destroy(knifeitem)
instance_destroy(dummyitem)
instance_destroy(dummyitem2)
instance_destroy(cursor)
instance_destroy(equipweapon)
instance_destroy(objeventstext)

instance_destroy(objdesctext)
instance_destroy(objeventstext)
instance_destroy(eventcount)
instance_destroy(cursorevents)

//Create
instance_create(x,y,saveslotstats)

a=instance_create(x,y,saveboxdach)
a.slot = 1
b=instance_create(x,y,saveboxdach)
b.slot = 2
c=instance_create(x,y,saveboxdach)
c.slot = 3

d=instance_create(x,y,saveboxboden)
d.slot = 1
e=instance_create(x,y,saveboxboden)
e.slot = 2
f=instance_create(x,y,saveboxboden)
f.slot = 3

g=instance_create(x,y,saveboxlinke)
g.slot = 1
h=instance_create(x,y,saveboxlinke)
h.slot = 2
i=instance_create(x,y,saveboxlinke)
i.slot = 3

j=instance_create(x,y,saveboxrechte)
j.slot = 1
k=instance_create(x,y,saveboxrechte)
k.slot = 2
l=instance_create(x,y,saveboxrechte)
l.slot = 3


submenu = 99
}




//Options-------------------------------------------------------------
else if submenu = 3
{
//Destroy
instance_destroy(obj7735inv)
instance_destroy(stoneitem)
instance_destroy(knifeitem)
instance_destroy(dummyitem)
instance_destroy(dummyitem2)
instance_destroy(cursor)
instance_destroy(equipweapon)
instance_destroy(objeventstext)

instance_destroy(objdesctext)
instance_destroy(objeventstext)
instance_destroy(eventcount)


instance_destroy(saveslotstats)
instance_destroy(saveboxdach)
instance_destroy(saveboxboden)
instance_destroy(saveboxlinke)
instance_destroy(saveboxrechte)

//Create

submenu = 99
}



