---
ns: VEHICLE
aliases: ["_0x8AA9180DE2FEDD45"]
---
## _ENABLE_AIRCRAFT_OBSTACLE_AVOIDANCE

```c
// 0x8AA9180DE2FEDD45 0xAE040377
void _ENABLE_AIRCRAFT_OBSTACLE_AVOIDANCE(Vehicle vehicle, BOOL avoidObstacles);
```


Will disable a plane or a helicopter's need to swerve around object in its heightmap when using TASK_PLANE_MISSION or other AI / Pilot behavior.  Will ensure plane flys directly to it's destination or die trying! This native does NOT need to be called every frame, but instead, just called once on the vehicle (NOT THE PED) you're trying to disable avoidance for!



## Parameters
* **vehicle**: The vehicle handle to toggle obstacle avoidance for.
* **avoidObstacles**: `true` / `false` to enable/disable heightmap obstacle avoidance respectively!
