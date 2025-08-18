---
ns: TASK
---
## TASK_BOAT_MISSION

```c
// 0x15C86013127CE63F 0x5865B031
void TASK_BOAT_MISSION(Ped ped, Vehicle boat, Vehicle vehicleTarget, Ped pedTarget, float x, float y, float z, int missionType, float speed, int drivingStyle, float radius, int missionFlags);
```

All parameters except ped and boat are optional, with `pedTarget`, `vehicleTarget`, `x`, `y`, `z` being dependent on `missionType` (ie. Attack/Flee mission types require a target ped/vehicle, whereas GoTo mission types require either `x`, `y`, `z` or a target ped/vehicle).

If you don't want to use a parameter; pass `0.0f` for `x`, `y` and `z`, `0` for `pedTarget`, `vehicleTarget` and other int parameters, and `-1.0f` for the remaining float parameters.

```c
enum eBoatMissionFlags
{
  None = 0,
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
* **vehicleTarget**: The target vehicle (default is 0).
* **pedTarget**: The target ped (default is 0).
* **x**: The x coordinate of the target (default is 0.0f).
* **y**: The y coordinate of the target (default is 0.0f).
* **z**: The z coordinate of the target (default is 0.0f).
* **missionType**: The mission type (default is 0) (see [TaskVehicleMission](#_0x659427E0EF36BCDE)).
* **speed**: The speed in m/s (default is -1.0f).
* **drivingStyle**: The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#_0xDACE1BE37D88AF67)).
* **radius**: The radius of when the task will be completed (default is -1.0f).
* **missionFlags**: The mission flags (default is 0) (see `eBoatMissionFlags`).

## Examples

```lua
local boat_model = `tropic`
RequestModel(boat_model)
repeat Wait(0) until HasModelLoaded(boat_model)

-- Player needs to be in open water & in a boat for this to work
local ped = PlayerPedId()
local coords = GetEntityCoords(ped) - GetEntityForwardVector(ped) * 15.0
local vehicle = CreateVehicle(boat_model, coords.x, coords.y, coords.z, GetEntityHeading(ped), true, false)
-- Allow the game engine to clear the model from memory
SetModelAsNoLongerNeeded(boat_model)

local ped_model = `a_m_m_skater_01`
RequestModel(ped_model)
repeat Wait(0) until HasModelLoaded(ped_model)

local driver = CreatePedInsideVehicle(vehicle, 0, ped_model, -1, true, false)
-- Allow the game engine to clear the model from memory
SetModelAsNoLongerNeeded(ped_model)

TaskBoatMission(driver, vehicle, GetVehiclePedIsIn(ped, false), 0, 0.0, 0.0, 0.0, 7, -1.0, 786468, -1.0, 1044)
-- Mission Type: Follow | Drive Style: DrivingModeAvoidVehiclesReckless | Mission Flags: AvoidShore | NeverStop | NeverPause
SetPedKeepTask(driver, true)
```
