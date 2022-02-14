---
ns: TASK
---
## TASK_VEHICLE_DRIVE_WANDER

```c
// 0x480142959D337D00 0x36EC0EB0
void TASK_VEHICLE_DRIVE_WANDER(Ped ped, Vehicle vehicle, float speed, int drivingStyle);
```


## Parameters
* **ped**: Ped id for the task.
* **vehicle**: Vehicle entity id for the task.
* **speed**: Speed of driving.
* **drivingStyle**: Use 447 to simulate a real-life driver. More info can be found at [Here](https://vespura.com/fivem/drivingstyle/)

Drive randomly with no destination set.

## Examples
```cs
// A short example showcasing how this native works in C#.
TaskVehicleDriveWander(PlayerPedId(), GetVehiclePedIsUsing(PlayerPedId()), 60.0f, 447);
```
