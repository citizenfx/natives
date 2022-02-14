---
ns: TASK
---
## TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE

```c
// 0x158BB33F920D360C 0x1490182A
void TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, int driveMode, float stopRange);
```


## Parameters
* **ped**: Ped id for the task.
* **vehicle**: Vehicle entity id for the task. 
* **x**: Destination X coordinate.
* **y**: Destination Y coordinate.
* **z**: Destination Z coordinate.
* **speed**: Speed of driving.
* **driveMode**: Use 447 to simulate a real-life driver. More info can be found at [Here](https://vespura.com/fivem/drivingstyle/)
* **stopRange**: Stops in the specific range near the destination. 20.0 works fine.

You can let your character drive to the destination at the speed and driving style you set. You can use map marks to set the destination.

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

TaskVehicleDriveToCoordLongrange(PlayerPedId(), GetVehiclePedIsUsing(PlayerPedId()), destination.X, destination.Y, destination.Z, 60.0f, 447, 20.0f);
```
