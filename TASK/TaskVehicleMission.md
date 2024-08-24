---
ns: TASK
---
## TASK_VEHICLE_MISSION

```c
// 0x659427E0EF36BCDE 0x20609E56
void TASK_VEHICLE_MISSION(Ped ped, Vehicle vehicle, Vehicle vehicleTarget, int missionType, float speed, int drivingStyle, float radius, float straightLineDist, BOOL DriveAgainstTraffic);
```

All parameters except ped, vehicle, vehicleTarget and speed are optional; with `missionType` being only those that require a target entity.

If you don't want to use a parameter; pass `0` for int parameters, and `-1.0f` for the remaining float parameters.

```c
enum eVehicleMissionType
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
* **vehicleTarget**: The target vehicle.
* **missionType**: The mission type (default is 0) (see `eVehicleMissionType`).
* **speed**: The speed in m/s.
* **drivingStyle**: The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#_0xDACE1BE37D88AF67)).
* **radius**: The radius of when the task will be completed (default is -1.0f).
* **straightLineDist**: The distance before the vehicle will drive straight to the target (default is -1.0f).
* **DriveAgainstTraffic**: Whether the vehicle should drive against traffic (default is false).

## Examples

```lua
local vehicle_model = `adder`
RequestModel(vehicle_model)
repeat Wait(0) until HasModelLoaded(vehicle_model)

-- Player needs in a vehicle for this to work
local ped = PlayerPedId()
local coords = GetEntityCoords(ped) - GetEntityForwardVector(ped) * 15.0
local vehicle = CreateVehicle(vehicle_model, coords.x, coords.y, coords.z, GetEntityHeading(ped), true, false)
-- Allow the game engine to clear the model from memory
SetModelAsNoLongerNeeded(vehicle_model)

local ped_model = `a_m_m_skater_01`
RequestModel(ped_model)
repeat Wait(0) until HasModelLoaded(ped_model)

local driver = CreatePedInsideVehicle(vehicle, 0, ped_model, -1, true, false)
-- Allow the game engine to clear the model from memory
SetModelAsNoLongerNeeded(ped_model)

TaskVehicleMission(driver, vehicle, GetVehiclePedIsIn(ped, false), 8, 35.0, 786468, -1.0, -1.0, true)
-- Mission Type: Flee | Drive Style: DrivingModeAvoidVehiclesReckless
SetPedKeepTask(driver, true)
```
