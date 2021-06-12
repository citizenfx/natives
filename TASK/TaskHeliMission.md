---
ns: TASK
---
## TASK_HELI_MISSION

```c
// 0xDAD029E187A2BEB4 0x0C143E97
void TASK_HELI_MISSION(Ped pilot, Vehicle aircraft, Vehicle targetVehicle, Ped targetPed, float destinationX, float destinationY, float destinationZ, int missionFlag, float maxSpeed, float landingRadius, float targetHeading, int unk1, int unk2, cs_type(Hash) float unk3, int landingFlags);
```

```
Needs more research.
Default value of p13 is -1.0 or 0xBF800000.
Default value of p14 is 0.
Modified examples from "fm_mission_controller.ysc", line ~203551:
TASK::TASK_HELI_MISSION(ped, vehicle, 0, 0, posX, posY, posZ, 4, 1.0, -1.0, -1.0, 10, 10, 5.0, 0);
TASK::TASK_HELI_MISSION(ped, vehicle, 0, 0, posX, posY, posZ, 4, 1.0, -1.0, -1.0, 0, ?, 5.0, 4096);
int mode seams to set mission type 4 = coords target, 23 = ped target.
int 14 set to 32 = ped will land at destination.
My findings:
mode 4 or 7 forces heli to snap to the heading set
8 makes the heli flee from the ped.
9 circles around ped with angle set
10, 11 normal + imitate ped heading
20 makes the heli land when he's near the ped. It won't resume chasing.
21 emulates an helicopter crash
23 makes the heli circle erratically around ped
I change p2 to 'vehicleToFollow' as it seems to work like the task natives to set targets. In the heli_taxi script where as the merryweather heli takes you to your waypoint it has no need to follow a vehicle or a ped, so of course both have 0 set.
```

## Parameters
* **pilot**: 
* **aircraft**: 
* **targetVehicle**: 
* **targetPed**: 
* **destinationX**: 
* **destinationY**: 
* **destinationZ**: 
* **missionFlag**: 
* **maxSpeed**: 
* **landingRadius**: 
* **targetHeading**: 
* **unk1**: 
* **unk2**: 
* **unk3**: 
* **landingFlags**: 

