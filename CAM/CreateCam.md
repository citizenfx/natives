---
ns: CAM
---
## CREATE_CAM

```c
// 0xC3981DCE61D9E13F 0xE9BF2A7D
Cam CREATE_CAM(char* camName, BOOL p1);
```
Create a camera with the specified cam name/type, You can use `SetCam` natives to manipulate the camera.

Cam names:
```
"DEFAULT_SCRIPTED_CAMERA"  
"DEFAULT_ANIMATED_CAMERA"  
"DEFAULT_SPLINE_CAMERA"  
"DEFAULT_SCRIPTED_FLY_CAMERA"  
"TIMED_SPLINE_CAMERA"  
```

## Parameters
* **camName**: Is the type of the camera, is always setted to `DEFAULT_SCRIPTED_CAMERA` in Rockstar scripts and in Fivem Forum Posts
* **p1**: Unkown, is always setted to true in Rockstar scripts and in Fivem Forum Posts

## Return value
A camera handle.
