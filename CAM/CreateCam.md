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

Note: There is an ongoing bug where this will consistently return a `-1` value if the event is called directly in a client-side `RegisterCommand` handler. Only alternative at the moment, if using commands, is to trigger a server event that triggers a separate event on the client to actually create the camera.

## Parameters
* **camName**: 
* **p1**: 

## Return value
