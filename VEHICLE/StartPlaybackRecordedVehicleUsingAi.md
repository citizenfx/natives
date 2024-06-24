---
ns: VEHICLE
---
## START_PLAYBACK_RECORDED_VEHICLE_USING_AI

```c
// 0x29DE5FA52D00428C 0x8DE8E24E
void START_PLAYBACK_RECORDED_VEHICLE_USING_AI(Vehicle vehicle, int recording, cs_type(AnyPtr) char* script, float speed, int drivingStyle);
```

```
AI abides by the provided driving style (e.g., stopping at red lights or waiting behind traffic) while executing the specificed vehicle recording.

0x1F2E4E06DEA8992B is a related native that deals with the AI physics for such recordings.
```

## Parameters
* **vehicle**: 
* **recording**: 
* **script**: 
* **speed**: 
* **drivingStyle**: The driving style (default is 0) (see [SetDriveTaskDrivingStyle](#_0xDACE1BE37D88AF67)).

