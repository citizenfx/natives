---
ns: TASK
---
## TASK_VEHICLE_MISSION_COORS_TARGET

```c
// 0xF0AF20AA7731F8C3 0x6719C109
void TASK_VEHICLE_MISSION_COORS_TARGET(Ped ped, Vehicle vehicle, float x, float y, float z, int missionType, float speed, int drivingStyle, float radius, float straightLineDist, BOOL DriveAgainstTraffic);
```

All parameters except ped, vehicle, x, y, z and speed are optional; with `missionType` being only those that don't require a target entity.

If you don't want to use a parameter; pass `0` for int parameters, and `-1.0f` for the remaining float parameters.

## Parameters
* **ped**: The ped to be tasked.
* **vehicle**: The vehicles' entity handle.
* **x**: The x coordinate.
* **y**: The y coordinate.
* **z**: The z coordinate.
* **missionType**: The mission type (default is 0) (see [TaskVehicleMission](#_0x659427E0EF36BCDE)).
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

local ped = PlayerPedId()
local coords = GetEntityCoords(ped)
local spawn_coords = coords - GetEntityForwardVector(ped) * 15.0
local vehicle = CreateVehicle(vehicle_model, spawn_coords.x, spawn_coords.y, spawn_coords.z, GetEntityHeading(ped), true, false)

-- Allow the game engine to clear the model from memory
SetModelAsNoLongerNeeded(vehicle_model)

local ped_model = `a_m_m_skater_01`
RequestModel(ped_model)
repeat Wait(0) until HasModelLoaded(ped_model)

local driver = CreatePedInsideVehicle(vehicle, 0, ped_model, -1, true, false)
-- Allow the game engine to clear the model from memory
SetModelAsNoLongerNeeded(ped_model)

TaskVehicleMissionCoorsTarget(driver, vehicle, coords.x, coords.y, coords.z, 8, 35.0, 786468, -1.0, -1.0, true)
-- Mission Type: Flee | Drive Style: DrivingModeAvoidVehiclesReckless
SetPedKeepTask(driver, true)
```
