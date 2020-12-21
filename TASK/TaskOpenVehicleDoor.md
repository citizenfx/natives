---
ns: TASK
---
## TASK_OPEN_VEHICLE_DOOR

```c
// 0x965791A9A488A062 0x8EE06BF4
void TASK_OPEN_VEHICLE_DOOR(Ped ped, Vehicle vehicle, int timeOut, int seat, float speed);
```

## Parameters
* **ped**: The ped to do the task
* **vehicle**: The vehicle whose doors the ped shoud open
* **timeOut**: Sets a timeout (in ms?) to the task; doesn't work for 0
* **seat**: The seat index - the ped will attempt to open doors to get to the specified seat
* **speed**:

```
seat:
-1 = driver  
0 = passenger  
1 = left back seat  
2 = right back seat  
3 = outside left  
4 = outside right

The ped will attempt to get to the seat while maintaining the shortest travel distance, which means for example for 1, the native will task the ped to open any nearest rear door. It seems to only matter with double doors, such as on ambulances.
```
