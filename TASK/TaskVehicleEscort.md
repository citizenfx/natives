---
ns: TASK
---
## TASK_VEHICLE_ESCORT

```c
// 0x0FA6E4B75F302400 0x9FDCB250
void TASK_VEHICLE_ESCORT(Ped ped, Vehicle vehicle, Vehicle targetVehicle, int mode, float speed, int drivingStyle, float minDistance, int p7, float noRoadsDistance);
```

```
Makes a ped follow the targetVehicle with <minDistance> in between.  
note: minDistance is ignored if drivingstyle is avoiding traffic, but Rushed is fine.  
Mode: The mode defines the relative position to the targetVehicle. The ped will try to position its vehicle there.  
-1 = behind  
0 = ahead  
1 = left  
2 = right  
3 = back left  
4 = back right  
if the target is closer than noRoadsDistance, the driver will ignore pathing/roads and follow you directly.  
Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/  
```

## Parameters
* **ped**: 
* **vehicle**: 
* **targetVehicle**: 
* **mode**: 
* **speed**: 
* **drivingStyle**: The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#_0xDACE1BE37D88AF67)).
* **minDistance**: 
* **p7**: 
* **noRoadsDistance**: 

