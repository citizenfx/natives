---
ns: VEHICLE
aliases: ["0x1CF38D529D7441D9"]
---
## _SET_VEHICLE_ST

```c
// 0x1CF38D529D7441D9 0xDF594D8D
void _SET_VEHICLE_ST(Vehicle vehicle, BOOL toggle);
```

```
Has something to do with trains. Always precedes SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED.  
============================================  
May be true that it can be used with trains not sure, but not specifically for trains. Go find Xbox360 decompiled scripts and search for 'func_1333' in freemode.c it isn't used just for trains. Thanks for the info tho.  
Btw, func_1333 ends up calling this func which uses this native,  
void func_1338(int iParam0)//Position   
{  
	ENTITY::FREEZE_ENTITY_POSITION(iParam0, true);  
	ENTITY::SET_ENTITY_COLLISION(iParam0, false, 0);  
	ENTITY::SET_ENTITY_INVINCIBLE(iParam0, true);  
	VEHICLE::_0xDF594D8D(iParam0, true);  
}  
```

## Parameters
* **vehicle**: 
* **toggle**: 

