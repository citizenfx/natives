---
ns: TASK
---
## TASK_VEHICLE_MISSION

```c
// 0x659427E0EF36BCDE 0x20609E56
void TASK_VEHICLE_MISSION(Ped ped, Vehicle vehicle, Vehicle vehicleTarget, int missionType, float speed, int drivingStyle, float radius, float straightLineDist, BOOL DriveAgainstTraffic);
```

All parameters except ped and vehicle are optional, with `vehicleTarget` being dependent on `missionType` (ie. Attack/Flee mission types require a target vehicle, whereas GoTo mission types require a target vehicle).

If you don't want to use a parameter; pass `0` for `vehicleTarget` and other int parameters, and `-1.0f` for the remaining float parameters.

```
missionType: https://alloc8or.re/gta5/doc/enums/eVehicleMissionType.txt
```

```c
enum VehicleMissionType
{
  None = 0,
  Cruise = 1,
  Ram = 2,
  Block = 3,
  GoTo = 4,
  Stop = 5,
  Attack = 6,
  Follow = 7,
  Flee = 8,
  Circle = 9,
  Escort = 12,
  GoToRacing = 14,
  FollowRecording = 15,
  PoliceBehaviour = 16,
  Land = 19,
  LandAndWait = 20,
  Crash = 21,
  PullOver = 22,
  HeliProtect = 23
}
```

## Parameters
* **ped**: The ped to be tasked.
* **vehicle**: The vehicles' entity handle.
* **vehicleTarget**: The target vehicle (default is 0).
* **missionType**: The mission type (default is 0) (see `VehicleMissionType`).
* **speed**: The speed in m/s (default is -1.0f).
* **drivingStyle**: The driving style (default is 0).
* **radius**: The radius of when the task will be completed (default is -1.0f).
* **straightLineDist**: The distance before the vehicle will drive straight to the target (default is -1.0f).
* **DriveAgainstTraffic**: Whether the vehicle should drive against traffic (default is false).
