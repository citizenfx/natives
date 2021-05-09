---
ns: VEHICLE
---
## GET_POSITION_OF_VEHICLE_RECORDING_AT_TIME

```c
// 0xD242728AA6F0FBA2 0x7178558D
Vector3 GET_POSITION_OF_VEHICLE_RECORDING_AT_TIME(int recording, float time, char* script);
```

This native does no interpolation between pathpoints. The same position will be returned for all times up to the next pathpoint in the recording.

See [`REQUEST_VEHICLE_RECORDING`](#_0xAF514CABE74CBF15).

## Parameters
* **recording**: 
* **time**: 
* **script**: 

## Return value
