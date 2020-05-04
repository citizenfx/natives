---
ns: PED
---
## CREATE_PED

```c
// 0xD49F9B0955C367DE 0x0389EF71
Ped CREATE_PED(int pedType, Hash modelHash, float x, float y, float z, float heading, BOOL isNetwork, BOOL netMissionEntity);
```

```
*Heading*: 0.0  
*Heading* is the Z axis spawn rotation of the ped 0->5th parameter.  
Ped Types:  
enum PedTypes  
{  
	PED_TYPE_PLAYER_0,// michael  
	PED_TYPE_PLAYER_1,// franklin  
	PED_TYPE_NETWORK_PLAYER,	// mp character  
	PED_TYPE_PLAYER_2,// trevor  
	PED_TYPE_CIVMALE,  
	PED_TYPE_CIVFEMALE,  
	PED_TYPE_COP,  
	PED_TYPE_GANG_ALBANIAN,  
	PED_TYPE_GANG_BIKER_1,  
	PED_TYPE_GANG_BIKER_2,  
	PED_TYPE_GANG_ITALIAN,  
	PED_TYPE_GANG_RUSSIAN,  
	PED_TYPE_GANG_RUSSIAN_2,  
	PED_TYPE_GANG_IRISH,  
	PED_TYPE_GANG_JAMAICAN,  
	PED_TYPE_GANG_AFRICAN_AMERICAN,  
	PED_TYPE_GANG_KOREAN,  
	PED_TYPE_GANG_CHINESE_JAPANESE,  
	PED_TYPE_GANG_PUERTO_RICAN,  
	PED_TYPE_DEALER,  
	PED_TYPE_MEDIC,  
	PED_TYPE_FIREMAN,  
	PED_TYPE_CRIMINAL,  
	PED_TYPE_BUM,  
	PED_TYPE_PROSTITUTE,  
	PED_TYPE_SPECIAL,  
	PED_TYPE_MISSION,  
	PED_TYPE_SWAT,  
	PED_TYPE_ANIMAL,  
	PED_TYPE_ARMY  
};  
```

## Parameters
* **pedType**: 
* **modelHash**: 
* **x**: 
* **y**: 
* **z**: 
* **heading**: 
* **isNetwork**: 
* **netMissionEntity**: 

## Return value
