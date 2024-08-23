if instance_number(mm10Target) = 0
&& phase = 0
{
instance_create(64,320,mm10Target)
instance_create(736,320,mm10Target)
phase = 1
}

if instance_number(mm10Target) = 0
&& phase = 1
{
instance_create(400,496,mm10Target)
phase = 2
}

if instance_number(mm10Target) = 0
&& phase = 2
{
TutMovingBlock.phase = 1
TutSpawningBlock.go = true
instance_destroy()
}


