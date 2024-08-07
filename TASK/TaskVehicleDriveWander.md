---
ns: TASK
---
## TASK_VEHICLE_DRIVE_WANDER

```c
// 0x480142959D337D00 0x36EC0EB0
void TASK_VEHICLE_DRIVE_WANDER(Ped ped, Vehicle vehicle, float speed, int drivingStyle);
```

Drive randomly with no destination set.

## Parameters
* **ped**: Ped id for the task.
* **vehicle**: Vehicle entity id for the task.
* **speed**: Speed of driving.
* **drivingStyle**: The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#_0xDACE1BE37D88AF67)).

## Examples
```cs
TaskVehicleDriveWander(Game.PlayerPed.Handle, Game.PlayerPed.CurrentVehicle.Handle, 60f, 447);
```
