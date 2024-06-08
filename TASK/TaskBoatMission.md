---
ns: TASK
---
## TASK_BOAT_MISSION

```c
// 0x15C86013127CE63F 0x5865B031
cs_type(Any) void TASK_BOAT_MISSION(Ped ped, Vehicle boat, Ped pedTarget, Vehicle vehicleTarget, float x, float y, float z, int missionType, float speed, int drivingStyle, float radius, int missionFlags);
```

```
All parameters except driver and boat are optional, with pedTarget, vehicleTarget, x, y, z being dependent on missionType (ie. Attack/Flee mission types require a target ped/vehicle, whereas GoTo mission types require either x,y,z or a target ped/vehicle). If you don't want to use a parameter; pass 0.0f for x,y and z, 0 for pedTarget, vehicleTarget and other int parameters, and -1.0f for the remaining float parameters.

You need to call PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS after TASK_BOAT_MISSION in order for the task to execute.
Working example
float vehicleMaxSpeed = VEHICLE::_GET_VEHICLE_MAX_SPEED(ENTITY::GET_ENTITY_MODEL(pedVehicle));
TASK::TASK_BOAT_MISSION(pedDriver, pedVehicle, 0, 0, waypointCoord.x, waypointCoord.y, waypointCoord.z, 4, vehicleMaxSpeed, 786469, -1.0, 7);
PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pedDriver, 1);
P8 appears to be driving style flag - see gtaforums.com/topic/822314-guide-driving-styles/ for documentation
```

```c
enum BoatMissionFlags
{
  StopAtEnd = 1,
  StopAtShore = 2,
  AvoidShore = 4,
  PreferForward = 8,
  NeverStop = 16,
  NeverNavMesh = 32,
  NeverRoute = 64,
  ForceBeached = 128,
  UseWanderRoute = 256,
  UseFleeRoute = 512,
  NeverPause = 1024,
}
```

## Parameters
* **ped**: The ped to be tasked.
* **boat**: The boats' entity handle.
* **pedTarget**: The target ped (0 if not used)
* **vehicleTarget**: The target vehicle (0 if not used)
* **x**: The x coordinate of the target (0.0f if not used)
* **y**: The y coordinate of the target (0.0f if not used)
* **z**: The z coordinate of the target (0.0f if not used)
* **missionType**: The mission type (0 if not used)
* **speed**: The speed in m/s (-1.0f if not used)
* **drivingStyle**: The driving style (0 if not used)
* **radius**: The radius of when the task will be completed (-1.0f if not used)
* **missionFlags**: The mission flags (0 if not used) (see BoatMissionFlags)
