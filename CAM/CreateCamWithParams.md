---
ns: CAM
---
## CREATE_CAM_WITH_PARAMS

```c
// 0xB51194800B257161 0x23B02F15
Cam CREATE_CAM_WITH_PARAMS(char* camName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL p8, int p9);
```

```
camName is always set to "DEFAULT_SCRIPTED_CAMERA" in Rockstar's scripts.  
------------  
Camera names found in the b617d scripts:  
"DEFAULT_ANIMATED_CAMERA"  
"DEFAULT_SCRIPTED_CAMERA"  
"DEFAULT_SCRIPTED_FLY_CAMERA"  
"DEFAULT_SPLINE_CAMERA"  
------------  
Side Note: It seems p8 is basically to represent what would be the bool p1 within CREATE_CAM native. As well as the p9 since it's always 2 in scripts seems to represent what would be the last param within SET_CAM_ROT native which normally would be 2.  
```

## Parameters
* **camName**: 
* **posX**: 
* **posY**: 
* **posZ**: 
* **rotX**: 
* **rotY**: 
* **rotZ**: 
* **fov**: 
* **p8**: 
* **p9**: 

## Return value
