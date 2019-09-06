---
ns: VEHICLE
---
## _GET_VEHICLE_OWNER

```c
// 0x8F5EBAB1F260CFCE 0x4A557117
BOOL _GET_VEHICLE_OWNER(Vehicle vehicle, Entity* entity);
```

```
The resulting entity can be a Vehicle or Ped.  
The native is stored between GET_VEHICLE_LIVERY_COUNT and GET_VEHICLE_MAX_BRAKING so the actual name is either GET_VEHICLE_L* or GET_VEHICLE_M*  
=========================  
on a side note watching changes in memory this will only store your ped's entityPoolAddress if it's your personal vehicle. So seems to be related to personal vehicles or atleast a specific decor of it maybe.  
```

## Parameters
* **vehicle**: 
* **entity**: 

## Return value
