---
ns: TASK
---
## TASK_HELI_MISSION

```c
// 0xDAD029E187A2BEB4 0x0C143E97
void TASK_HELI_MISSION(Ped ped, Vehicle heli, Vehicle vehicleTarget, Ped pedTarget, float x, float y, float z, int missionType, float speed, float radius, float heading, cs_type(int) float height, float minHeight, cs_type(Hash) float slowDist, int missionFlags);
```

All parameters except ped, heli and speed are optional, with `pedTarget`, `vehicleTarget`, `x`, `y`, `z` being dependent on `missionType` (ie. Attack/Flee mission types require a target ped/vehicle, whereas GoTo mission types require either `x`, `y`, `z` or a target ped/vehicle).

If you don't want to use a parameter; pass `0.0f` for `x`, `y` and `z`, `0` for `pedTarget`, `vehicleTarget`, `0` for int parameters, and `-1.0f` for the remaining float parameters.

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
* **missionType**: The mission type (default is 0) (see ![TaskVehicleMission](#_0x659427E0EF36BCDE)).
* **speed**: The speed in m/s.
* **radius**: The radius of when the task will be completed (default is -1.0f).
* **heading**:  The heading the helicopter will face at task completion (default is -1.0f).
* **height**: The height the helicopter will fly at (default is -1.0f).
* **minHeight**: The height the helicopter will not fly below (default is -1.0f).
* **slowDist**: The distance to the target at which the helicopter will slow down (default is -1.0f).
* **missionFlags**: The mission flags (default is 0) (see `HeliMissionFlags`).

## Examples

```lua
local model = `akula`
RequestModel(model)
repeat Wait(0) until HasModelLoaded(model)
local ped = PlayerPedId() -- Player needs to be outside for this to work
local coords = GetEntityCoords(ped) + GetEntityForwardVector(ped) * 100.0
local vehicle = CreateVehicle(model, coords.x, coords.y, coords.z + 50.0, GetEntityHeading(ped) - 180.0, true, false)
SetHeliBladesFullSpeed(vehicle)
model = `a_m_m_skater_01`
RequestModel(model)
repeat Wait(0) until HasModelLoaded(model)
local driver = CreatePedInsideVehicle(vehicle, 0, model, -1, true, false)
TaskHeliMission(driver, vehicle, 0, 0, coords.x, coords.y, coords.z, 19, 10.0, -1.0, -1.0, -1.0, -1.0, -1.0, 96)
-- Mission Type: Land | Mission Flags: LandOnArrival | DontDoAvoidance
SetPedKeepTask(driver, true)
```
