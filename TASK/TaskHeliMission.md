---
ns: TASK
---
## TASK_HELI_MISSION

```c
// 0xDAD029E187A2BEB4 0x0C143E97
void TASK_HELI_MISSION(Ped ped, Vehicle heli, Vehicle vehicleTarget, Ped pedTarget, float x, float y, float z, int missionType, float speed, float radius, float heading, cs_type(Int) float height, float minHeight, cs_type(Hash) float slowDist, int missionFlags);
```

All parameters except ped and heli are optional, with `pedTarget`, `vehicleTarget`, `x`, `y`, `z` being dependent on `missionType` (ie. Attack/Flee mission types require a target ped/vehicle, whereas GoTo mission types require either `x`, `y`, `z` or a target ped/vehicle).

If you don't want to use a parameter; pass `0.0f` for `x`, `y` and `z`, `0` for `pedTarget`, `vehicleTarget` and other int parameters, and `-1.0f` for the remaining float parameters.

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

```c
enum HeliMissionFlags
{
  None = 0,
  AttainRequestedOrientation = 1,
  DontModifyOrientation = 2,
  DontModifyPitch = 4,
  DontModifyThrottle = 8,
  DontModifyRoll = 16,
  LandOnArrival = 32,
  DontDoAvoidance = 64,
  StartEngineImmediately = 128,
  ForceHeightMapAvoidance = 256,
  DontClampProbesToDestination = 512,
  EnableTimeslicingWhenPossible = 1024,
  CircleOppositeDirection = 2048,
  MaintainHeightAboveTerrain = 4096,
  IgnoreHiddenEntitiesDuringLand = 8192,
  DisableAllHeightMapAvoidance = 16384,
  // ForceHeightMapAvoidance | DontDoAvoidance
  HeightMapOnlyAvoidance = 320,
}
```

## Parameters
* **ped**: The ped to be tasked.
* **heli**: The helicopters' entity handle.
* **vehicleTarget**: The target vehicle (default is 0).
* **pedTarget**: The target ped (default is 0).
* **x**: The x coordinate of the target (default is 0.0f).
* **y**: The y coordinate of the target (default is 0.0f).
* **z**: The z coordinate of the target (default is 0.0f).
* **missionType**: The mission type (default is 0).
* **speed**: The speed in m/s (default is -1.0f).
* **radius**: The radius of when the task will be completed (default is -1.0f).
* **heading**:  The heading the helicopter will face at task completion (default is -1.0f).
* **height**: The height the helicopter will fly at (default is -1.0f).
* **minHeight**: The height the helicopter will not fly below (default is -1.0f).
* **slowDist**: The distance to the target at which the helicopter will slow down (default is -1.0f).
* **missionFlags**: The mission flags (default is 0) (see `HeliMissionFlags`).
