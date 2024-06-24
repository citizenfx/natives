---
ns: VEHICLE
---
## START_PLAYBACK_RECORDED_VEHICLE_WITH_FLAGS

```c
// 0x7D80FD645D4DA346 0x4E721AD2
void START_PLAYBACK_RECORDED_VEHICLE_WITH_FLAGS(Vehicle vehicle, int recording, char* script, int flags, int time, int drivingStyle);
```

```
flags requires further research, e.g., 0x4/0x8 are related to the AI driving task and 0x20 is internally set and interacts with dynamic entity components.
time, often zero and capped at 500, is related to SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER
```

## Parameters
* **vehicle**: 
* **recording**: 
* **script**: 
* **flags**: 
* **time**: 
* **drivingStyle**: The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#_0xDACE1BE37D88AF67)).

