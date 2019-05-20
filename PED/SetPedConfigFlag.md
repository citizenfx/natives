---
ns: PED
---
## SET_PED_CONFIG_FLAG

```c
// 0x1913FE4CBF41C463 0x9CFBE10D
void SET_PED_CONFIG_FLAG(Ped ped, int flagId, BOOL value);
```

```
Research help : pastebin.com/fPL1cSwB  
New items added with underscore as first char  
-----------------------------------------------------------------------  
enum PedConfigFlags  
{  
	PED_FLAG_CAN_FLY_THRU_WINDSCREEN = 32,  
        PED_FLAG_DIES_BY_RAGDOLL = 33,  
	_PED_FLAG_PUT_ON_MOTORCYCLE_HELMET = 35,  
	PED_FLAG_NO_COLLISION = 52,  
        _PED_FLAG_IS_SHOOTING = 58,  
        _PED_FLAG_IS_ON_GROUND = 60,  
	PED_FLAG_NO_COLLIDE = 62,  
	PED_FLAG_DEAD = 71,  
        PED_FLAG_IS_SNIPER_SCOPE_ACTIVE = 72,  
	PED_FLAG_SUPER_DEAD = 73,  
        _PED_FLAG_IS_IN_AIR = 76,  
	PED_FLAG_IS_AIMING = 78,  
	PED_FLAG_DRUNK = 100,  
        _PED_FLAG_IS_NOT_RAGDOLL_AND_NOT_PLAYING_ANIM = 104,  
        PED_FLAG_NO_PLAYER_MELEE = 122,  
	PED_FLAG_NM_MESSAGE_466 = 125,  
	PED_FLAG_INJURED_LIMP = 166,  
	PED_FLAG_INJURED_LIMP_2 = 170,  
	_PED_FLAG_DISABLE_SHUFFLING_TO_DRIVER_SEAT = 184,  
	PED_FLAG_INJURED_DOWN = 187,  
	PED_FLAG_SHRINK = 223,  
        PED_FLAG_MELEE_COMBAT = 224,  
        _PED_FLAG_IS_ON_STAIRS = 253,  
        _PED_FLAG_HAS_ONE_LEG_ON_GROUND = 276,  
	PED_FLAG_NO_WRITHE = 281,  
	PED_FLAG_FREEZE = 292,  
	PED_FLAG_IS_STILL = 301,  
        PED_FLAG_NO_PED_MELEE = 314,  
        _PED_SWITCHING_WEAPON = 331,  
	PED_FLAG_ALPHA = 410,  
	_PED_FLAG_DISABLE_STARTING_VEH_ENGINE = 429,  
};  
(*) When flagId is set to 33 and the bool value to true, peds will die by starting ragdoll, so you should set this flag to false when you resurrect a ped.  
When flagId is set to 62 and the boolvalue to false this happens: Ped is taken out of vehicle and can't get back in when jacking their empty vehicle. If in a plane it falls from the sky and crashes. Sometimes peds vehicle continue to drive the route without its driver who's running after.   
(*)  
JUMPING CHANGES  60,61,104 TO FALSE  
BEING ON WATER CHANGES 60,61 TO FALSE AND 65,66,168 TO TRUE  
FALLING CHANGES 60,61,104,276 TO FALSE AND TO 76 TRUE  
DYING CHANGES 60,61,104,276* TO FALSE AND (NONE) TO TRUE  
DYING MAKES 60,61,104 TO FALSE  
BEING IN A CAR CHANGES 60,79,104 TO FALSE AND 62 TO TRUE  
(*)Maximum value for flagId is 0x1AA (426) in b944.  
ID 0xF0 (240) appears to be a special flag which is handled different compared to the others IDs.  
```

## Parameters
* **ped**: 
* **flagId**: 
* **value**: 

