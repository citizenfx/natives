---
ns: TASK
---
## TASK_OPEN_VEHICLE_DOOR

```c
// 0x965791A9A488A062 0x8EE06BF4
void TASK_OPEN_VEHICLE_DOOR(Ped ped, Vehicle vehicle, int timeOut, int doorIndex, float speed);
```

## Parameters
* **ped**: The ped to do the task
* **vehicle**: The vehicle whose doors the ped shoud open
* **timeOut**: Sets a timeout (in ms?) to the task; doesn't work for 0
* **doorIndex**: The door index (explained below -  isn't the same as in SET_VEHICLE_DOOR_OPEN / SET_VEHICLE_DOOR_SHUT)
* **speed**:

```
doorIndex:
-1 and 0 for front doors (opens the front door which is closer to the ped, perhaps -1 was originally for left door, but it seems not to matter)
1 opens the left rear door (but for most of vehicles will also open the nearest rear door)
2 opens the right rear door (but for most of vehicles will also open the nearest rear door)
```
