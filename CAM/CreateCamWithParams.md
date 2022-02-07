---
ns: CAM
---
## CREATE_CAM_WITH_PARAMS

```c
// 0xB51194800B257161 0x23B02F15
Cam CREATE_CAM_WITH_PARAMS(char* camName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL active, int rotationOrder);
```

camName is always set to "DEFAULT_SCRIPTED_CAMERA" in Rockstar's scripts.  
------------  
Camera names found in the b617d scripts:  
"DEFAULT_ANIMATED_CAMERA"  
"DEFAULT_SCRIPTED_CAMERA"  
"DEFAULT_SCRIPTED_FLY_CAMERA"  
"DEFAULT_SPLINE_CAMERA"  
------------  

## Parameters
* **camName**: 
* **posX**: 
* **posY**: 
* **posZ**: 
* **rotX**: 
* **rotY**: 
* **rotZ**: 
* **fov**: 
* **active**: 
* **rotationOrder**: 

## Return value
