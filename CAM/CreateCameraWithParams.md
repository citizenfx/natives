---
ns: CAM
---
## CREATE_CAMERA_WITH_PARAMS

```c
// 0x6ABFA3E16460F22D 0x0688BE9A
Cam CREATE_CAMERA_WITH_PARAMS(Hash camHash, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL active, int rotationOrder);
```

CAM::_GET_GAMEPLAY_CAM_COORDS can be used instead of posX,Y,Z  
CAM::_GET_GAMEPLAY_CAM_ROT can be used instead of rotX,Y,Z  
CAM::_GET_FINAL_RENDERED_CAM_FOV can be used instead of p7 (Possible p7 is FOV parameter. )  
rotationOrder is 2 usually

## Parameters
* **camHash**: 
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
