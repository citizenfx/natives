---
ns: TASK
---
## TASK_BOAT_MISSION

```c
// 0x15C86013127CE63F 0x5865B031
void TASK_BOAT_MISSION(Ped ped, Vehicle boat, Vehicle vehicleTarget, Ped pedTarget, float x, float y, float z, int missionType, float speed, int drivingStyle, float radius, int missionFlags);
```

All parameters except driver and boat are optional, with `pedTarget`, `vehicleTarget`, `x`, `y`, `z` being dependent on `missionType` (ie. Attack/Flee mission types require a target ped/vehicle, whereas GoTo mission types require either `x`, `y`, `z` or a target ped/vehicle). 

If you don't want to use a parameter; pass `0.0f` for `x`, `y` and `z`, `0` for `pedTarget`, `vehicleTarget` and other int parameters, and `-1.0f` for the remaining float parameters.

```
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
  // StopAtEnd | StopAtShore | AvoidShore
  DefaultSettings = 7,
  // StopAtEnd | StopAtShore | AvoidShore | PreferForward | NeverNavMesh | NeverRoute
  OpenOceanSettings = 111,
  // StopAtEnd | StopAtShore | AvoidShore | PreferForward | NeverNavMesh | NeverPause
  BoatTaxiSettings = 1071,
}
```

## Parameters
* **ped**: The ped to be tasked.
* **boat**: The boats' entity handle.
* **vehicleTarget**: The target vehicle (default is 0)
* **pedTarget**: The target ped (default is 0)
* **x**: The x coordinate of the target (default is 0.0f)
* **y**: The y coordinate of the target (default is 0.0f)
* **z**: The z coordinate of the target (default is 0.0f)
* **missionType**: The mission type (default is 0)
* **speed**: The speed in m/s (default is -1.0f)
* **drivingStyle**: The driving style (default is 0)
* **radius**: The radius of when the task will be completed (default is -1.0f)
* **missionFlags**: The mission flags (default is 0) (see `BoatMissionFlags`)
