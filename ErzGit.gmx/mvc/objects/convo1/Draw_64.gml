textx = 60
texty = 430

if go = 0
{
scr_textarial("Mann... der junge hat#mehr IQ als du",0.75)
go = 1
diatestchara1.active = 1
}

if go = 2
{
instance_destroy(objarial)
scr_textarial("Mir reichts 7735! Du bist ein dummer junge, weist du das eigetnlich? Meine fresse bist du hohl!",0.75)
go = 3
diatestchara2.side = 1
diatestchara2.active = 1
diatestchara1.active = 0
}

if go = 4
{
instance_destroy(objarial)
scr_textarial("Ich bin nicht hohl! Ich bin WHolesome! Und sobald du das mal verstehst wirst du mich auch schon noch lieben lernen du schnulli! Du lulli! Geh weg du grobian jetzt! JETZTT!!!",0.75)
go = 5
diatestchara2.active = 0
diatestchara1.active = 1
}

if go = 6
{
instance_destroy(objarial)
scr_textarial("Ich bin also ein lulli? Na wart!!",0.75)
go = 7
diatestchara2.active = 1
diatestchara1.active = 0
}

if go = 8
{
instance_destroy()
instance_destroy(dialogbox)
}

