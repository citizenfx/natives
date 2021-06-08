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

Note: You can only create a certain amount of 
cameras before the game wont let you anymore.

In order to prevent that, make sure to delete a 
camera once you are no longer using it with DestroyCam(cam, true)
https://docs.fivem.net/natives/?_0x865908C81A2C22E9
```

## Parameters
* **camName**: 
* **p1**: 

## Return value
