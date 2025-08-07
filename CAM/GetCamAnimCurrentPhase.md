---
ns: CAM
---
## GET_CAM_ANIM_CURRENT_PHASE

```c
// 0xA10B2DB49E92A6B0 0x345F72D0
float GET_CAM_ANIM_CURRENT_PHASE(Cam cam);
```

## Parameters
* **cam**: The camera to get the anim phase. Note that this camera must have been created using the name: "DEFAULT_ANIMATED_CAMERA".

## Return value
Returns the phase of the animation that is currently playing on the specified camera.