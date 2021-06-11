---
ns: TASK
---
## TASK_DRIVE_BY

```c
// 0x2F8AF0E82773A171 0x2B84D1C4
void TASK_DRIVE_BY(Ped driverPed, Ped targetPed, Vehicle targetVehicle, float targetX, float targetY, float targetZ, float distanceToShoot, int pedAccuracy, BOOL p8, Hash firingPattern);
```

```
Example:
TASK::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});
Needs working example. Doesn't seem to do anything.
I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
```

## Parameters
* **driverPed**: 
* **targetPed**: 
* **targetVehicle**: 
* **targetX**: 
* **targetY**: 
* **targetZ**: 
* **distanceToShoot**: 
* **pedAccuracy**: 
* **p8**: 
* **firingPattern**: 

