---
ns: PED
---
## SET_EXCLUSIVE_PHONE_RELATIONSHIPS

```c
// 0xF92691AED837A5FC 0x56E0C163
Vehicle SET_EXCLUSIVE_PHONE_RELATIONSHIPS(Ped ped);
```

```
In appcamera.c4, Line 106:  
if (VEHICLE::IS_VEHICLE_DRIVEABLE(PED::SET_EXCLUSIVE_PHONE_RELATIONSHIPS(PLAYER::PLAYER_PED_ID()), 0))  
So return type could be a vehicle?  
!Hash collision - gets the vehicle handle from ped which is about entering the vehicle!  
sfink: agreed, 100%  
Proper name is GET_VEHICLE_PED_IS_ENTERING  
```

## Parameters
* **ped**: 

## Return value
