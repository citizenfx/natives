---
ns: VEHICLE
aliases: ["_GET_VEHICLE_OWNER"]
---
## GET_VEHICLE_LOCK_ON_TARGET

```c
// 0x8F5EBAB1F260CFCE 0x4A557117
BOOL GET_VEHICLE_LOCK_ON_TARGET(Vehicle vehicle, Entity* entity);
```

```
The resulting entity can be a Vehicle or Ped.  
=========================  
on a side note watching changes in memory this will only store your ped's entityPoolAddress if it's your personal vehicle. So seems to be related to personal vehicles or atleast a specific decor of it maybe.  
```

## Parameters
* **vehicle**: 
* **entity**: 

## Return value
