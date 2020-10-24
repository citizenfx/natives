---
ns: TASK
---
## TASK_VEHICLE_DRIVE_TO_COORD

```c
// 0xE2A2AA2F659D77A7 0xE4AC0387
void TASK_VEHICLE_DRIVE_TO_COORD(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, Any p6, Hash vehicleModel, int drivingMode, float stopRange, float p10);
```

```
info about driving modes: HTTP://gtaforums.com/topic/822314-guide-driving-styles/  
---------------------------------------------------------------  
Passing P6 value as floating value didn't throw any errors, though unsure what is it exactly, looks like radius or something.  
P10 though, it is mentioned as float, however, I used bool and set it to true, that too worked.  
Here the e.g. code I used  
Function.Call(Hash.TASK_VEHICLE_DRIVE_TO_COORD, Ped, Vehicle, Cor X, Cor Y, Cor Z, 30f, 1f, Vehicle.GetHashCode(), 16777216, 1f, true);  
```

## Parameters
* **ped**: 
* **vehicle**: 
* **x**: 
* **y**: 
* **z**: 
* **speed**: 
* **p6**: 
* **vehicleModel**: 
* **drivingMode**: 
* **stopRange**: 
* **p10**: 

