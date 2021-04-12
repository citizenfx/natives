---
ns: TASK
---
## TASK_OPEN_VEHICLE_DOOR

```c
// 0x965791A9A488A062 0x8EE06BF4
void TASK_OPEN_VEHICLE_DOOR(Ped ped, Vehicle vehicle, int timeOut, int seat, float speed);
```

```
The given ped will try to open the nearest door to 'seat'.
Example: telling the ped to open the door for the driver seat does not necessarily mean it will open the driver door, it may choose to open the passenger door instead if that one is closer.
```

## Parameters
* **ped**: 
* **vehicle**: 
* **timeOut**: 
* **seat**: 
* **speed**: 

