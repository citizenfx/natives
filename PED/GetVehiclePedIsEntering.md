---
ns: PED
aliases: ["SET_EXCLUSIVE_PHONE_RELATIONSHIPS"]
---
## GET_VEHICLE_PED_IS_ENTERING

```c
// 0xF92691AED837A5FC 0x56E0C163
Vehicle GET_VEHICLE_PED_IS_ENTERING(Ped ped);
```

```
In appcamera.c4, Line 106:  
if (VEHICLE::IS_VEHICLE_DRIVEABLE(PED::SET_EXCLUSIVE_PHONE_RELATIONSHIPS(PLAYER::PLAYER_PED_ID()), 0))  
So return type could be a vehicle?  
sfink: agreed, 100%  
Proper name is GET_VEHICLE_PED_IS_ENTERING  
```

## Parameters
* **ped**: 

## Return value
