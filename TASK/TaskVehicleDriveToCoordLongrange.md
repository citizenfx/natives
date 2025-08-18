---
ns: TASK
---
## TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE

```c
// 0x158BB33F920D360C 0x1490182A
void TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, int drivingStyle, float stopRange);
```

You can let your character drive to the destination at the speed and driving style you set. You can use map marks to set the destination.

```c
enum eDriveBehaviorFlags {
  DF_StopForCars = 1,
  DF_StopForPeds = 2,
  DF_SwerveAroundAllCars = 4,
  DF_SteerAroundStationaryCars = 8,
  DF_SteerAroundPeds = 16,
  DF_SteerAroundObjects = 32,
  DF_DontSteerAroundPlayerPed = 64,
  DF_StopAtLights = 128,
  DF_GoOffRoadWhenAvoiding = 256,
  DF_DriveIntoOncomingTraffic = 512,
  DF_DriveInReverse = 1024,
  DF_UseWanderFallbackInsteadOfStraightLine = 2048,
  DF_AvoidRestrictedAreas = 4096,
  DF_PreventBackgroundPathfinding = 8192, // **These only work on MISSION_CRUISE**
  DF_AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
  DF_UseShortCutLinks = 262144,
  DF_ChangeLanesAroundObstructions = 524288,
  DF_UseSwitchedOffNodes = 2097152,	//cruise tasks ignore this anyway--only used for goto's
  DF_PreferNavmeshRoute = 4194304,	//if you're going to be primarily driving off road
  DF_PlaneTaxiMode = 8388608, // Only works for planes using MISSION_GOTO, will cause them to drive along the ground instead of fly
  DF_ForceStraightLine = 16777216,
  DF_UseStringPullingAtJunctions = 33554432,
  DF_AvoidHighways = 536870912,
  DF_ForceJoinInRoadDirection = 1073741824
}
```

## Parameters
* **ped**: Ped id for the task.
* **vehicle**: Vehicle entity id for the task. 
* **x**: Destination X coordinate.
* **y**: Destination Y coordinate.
* **z**: Destination Z coordinate.
* **speed**: Speed of driving.
* **drivingStyle**: The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#_0xDACE1BE37D88AF67)).
* **stopRange**: Stops in the specific range near the destination. 20.0 works fine.

## Examples
```cs
// A short example showcasing how this native works with map marks.

// Get the map mark location.
Vector3 destination = GetBlipInfoIdCoord(GetFirstBlipInfoId(8));

// If no mark is set, return immediately.
if (destination == Vector3.Zero)
{
    return;
}

TaskVehicleDriveToCoordLongrange(Game.PlayerPed.Handle, Game.PlayerPed.CurrentVehicle.Handle, destination.X, destination.Y, destination.Z, 60f, 447, 20f);
```
