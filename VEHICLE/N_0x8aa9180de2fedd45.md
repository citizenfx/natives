---
ns: VEHICLE
---
## EnableAircraftObstacleAvoidance

```c
// 0x8AA9180DE2FEDD45 0xAE040377
void _0x8AA9180DE2FEDD45(Vehicle vehicle, BOOL enableobstacleavoidance);
```


Will disable a plane or a helicopter's need to swerve around object in its heightmap.  Will ensure plane flys directly to it's destination or die trying! This native does NOT need to be called every frame, but instead, just called once on the vehicle (NOT THE PED) you're trying to disable avoidance for!



## Parameters
* **vehicle**: 
* **enableobstacleavoidance**: 

