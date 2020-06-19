---
ns: VEHICLE
---
## GET_ROTATION_OF_VEHICLE_RECORDING_AT_TIME

```c
// 0x2058206FBE79A8AD 0xD96DEC68
int GET_ROTATION_OF_VEHICLE_RECORDING_AT_TIME(int recording, float time, Any* script);
```

This native does no interpolation between pathpoints. The same rotation will be returned for all times up to the next pathpoint in the recording.

See [REQUEST_VEHICLE_RECORDING](#_0xAF514CABE74CBF15)

```
NativeDB Parameter 2: char* script 
NativeDB Return Type: Vector3
```

## Parameters
* **recording**: 
* **time**: 
* **script**: 

## Return value
The rotation of the vehicle at the given time.
