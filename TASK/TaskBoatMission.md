---
ns: TASK
---
## TASK_BOAT_MISSION

```c
// 0x15C86013127CE63F 0x5865B031
void TASK_BOAT_MISSION(Ped pedDriver, Vehicle boat, Any p2, Any p3, float x, float y, float z, Any p7, float maxSpeed, int drivingStyle, float p10, Any p11);
```

```
You need to call PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS after TASK_BOAT_MISSION in order for the task to execute.
Working example
float vehicleMaxSpeed = VEHICLE::_GET_VEHICLE_MAX_SPEED(ENTITY::GET_ENTITY_MODEL(pedVehicle));
TASK::TASK_BOAT_MISSION(pedDriver, pedVehicle, 0, 0, waypointCoord.x, waypointCoord.y, waypointCoord.z, 4, vehicleMaxSpeed, 786469, -1.0, 7);
PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pedDriver, 1);
P8 appears to be driving style flag - see gtaforums.com/topic/822314-guide-driving-styles/ for documentation
```

## Parameters
* **pedDriver**: 
* **boat**: 
* **p2**: 
* **p3**: 
* **x**: 
* **y**: 
* **z**: 
* **p7**: 
* **maxSpeed**: 
* **drivingStyle**: 
* **p10**: 
* **p11**: 

