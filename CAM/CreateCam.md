---
ns: CAM
---
## CREATE_CAM

```c
// 0xC3981DCE61D9E13F 0xE9BF2A7D
Cam CREATE_CAM(char* camName, BOOL p1);
```

```
"DEFAULT_SCRIPTED_CAMERA"  
"DEFAULT_ANIMATED_CAMERA"  
"DEFAULT_SPLINE_CAMERA"  
"DEFAULT_SCRIPTED_FLY_CAMERA"  
"TIMED_SPLINE_CAMERA"  
```
Note: This cannot be ran in the console command manager thread, if using a camera activate through a command, trigger an event to handle the creation of the camera. Otherwise this method will always return `-1`.

## Parameters
* **camName**: 
* **p1**: 

## Return value
