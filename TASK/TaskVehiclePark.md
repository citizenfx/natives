---
ns: TASK
---
## TASK_VEHICLE_PARK

```c
// 0x0F3E34E968EA374E 0x5C85FF90
void TASK_VEHICLE_PARK(Ped ped, Vehicle vehicle, float x, float y, float z, float heading, int mode, float radius, BOOL keepEngineOn);
```

```
Modes:  
0 - ignore heading  
1 - park forward  
2 - park backwards  
Depending on the angle of approach, the vehicle can park at the specified heading or at its exact opposite (-180) angle.  
Radius seems to define how close the vehicle has to be -after parking- to the position for this task considered completed. If the value is too small, the vehicle will try to park again until it's exactly where it should be. 20.0 Works well but lower values don't, like the radius is measured in centimeters or something.  
```

## Parameters
* **ped**: 
* **vehicle**: 
* **x**: 
* **y**: 
* **z**: 
* **heading**: 
* **mode**: 
* **radius**: 
* **keepEngineOn**: 

