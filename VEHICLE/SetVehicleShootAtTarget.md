---
ns: VEHICLE
---
## SET_VEHICLE_SHOOT_AT_TARGET

```c
// 0x74CD9A9327A282EA 0x2343FFDF
void SET_VEHICLE_SHOOT_AT_TARGET(Ped driver, Entity entity, float xTarget, float yTarget, float zTarget);
```

```
Commands the driver of an armed vehicle (p0) to shoot its weapon at a target (p1). p3, p4 and p5 are the coordinates of the target. Example:  
WEAPON::SET_CURRENT_PED_VEHICLE_WEAPON(pilot,GAMEPLAY::GET_HASH_KEY("VEHICLE_WEAPON_PLANE_ROCKET"));VEHICLE::SET_VEHICLE_SHOOT_AT_TARGET(pilot, target, targPos.x, targPos.y, targPos.z);  
```

## Parameters
* **driver**: 
* **entity**: 
* **xTarget**: 
* **yTarget**: 
* **zTarget**: 

