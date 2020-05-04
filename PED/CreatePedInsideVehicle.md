---
ns: PED
---
## CREATE_PED_INSIDE_VEHICLE

```c
// 0x7DD959874C1FD534 0x3000F092
Ped CREATE_PED_INSIDE_VEHICLE(Vehicle vehicle, int pedType, Hash modelHash, int seat, BOOL isNetwork, BOOL netMissionEntity);
```

```
Ped Types:  
enum ePedType  
{  
	PED_TYPE_PLAYER_0 = 0,  
	PED_TYPE_PLAYER_1 = 1,  
	PED_TYPE_PLAYER_2 = 3,  
	PED_TYPE_CIVMALE = 4,  
	PED_TYPE_CIVFEMALE = 5,  
	PED_TYPE_COP = 6,  
	PED_TYPE_UNKNOWN_7 = 7,  
	PED_TYPE_UNKNOWN_12 = 12, // gang member?  
	PED_TYPE_UNKNOWN_19 = 19,  
	PED_TYPE_MEDIC = 20,  
	PED_TYPE_FIREMAN = 21,  
	PED_TYPE_UNKNOWN_22 = 22,  
	PED_TYPE_UNKNOWN_25 = 25,  
	PED_TYPE_UNKNOWN_26 = 26,  
	PED_TYPE_SWAT = 27,  
	PED_TYPE_ANIMAL = 28,  
	PED_TYPE_ARMY = 29  
};  
```

## Parameters
* **vehicle**: 
* **pedType**: 
* **modelHash**: 
* **seat**: 
* **isNetwork**: 
* **netMissionEntity**: 

## Return value
