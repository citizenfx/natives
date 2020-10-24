---
ns: TASK
---
## TASK_THROW_PROJECTILE

```c
// 0x7285951DBF6B5A51 0xF65C20A7
void TASK_THROW_PROJECTILE(Ped ped, float x, float y, float z);
```

```
In every case of this native, I've only seen the first parameter passed as 0, although I believe it's a Ped after seeing tasks around it using 0. That's because it's used in a Sequence Task.  
The last 3 parameters are definitely coordinates after seeing them passed in other scripts, and even being used straight from the player's coordinates.  
---  
It seems that - in the decompiled scripts - this native was used on a ped who was in a vehicle to throw a projectile out the window at the player. This is something any ped will naturally do if they have a throwable and they are doing driveby-combat (although not very accurately).  
It is possible, however, that this is how SWAT throws smoke grenades at the player when in cover.  
----------------------------------------------------  
The first comment is right it definately is the ped as if you look in script finale_heist2b.c line 59628 in Xbox Scripts atleast you will see task_throw_projectile and the first param is Local_559[2 <14>] if you look above it a little bit line 59622 give_weapon_to_ped uses the same exact param Local_559[2 <14>] and we all know the first param of that native is ped. So it guaranteed has to be ped. 0 just may mean to use your ped by default for some reason.  
```

```
NativeDB Added Parameter 5: Any p4
NativeDB Added Parameter 6: Any p5
```

## Parameters
* **ped**: 
* **x**: 
* **y**: 
* **z**: 

