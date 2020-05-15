---
ns: CAM
---
## SET_GAMEPLAY_CAM_RELATIVE_PITCH

```c
// 0x6D0858B8EDFD2B7D 0x6381B963
void SET_GAMEPLAY_CAM_RELATIVE_PITCH(float x, float scalingFactor);
```

This native sets the camera's pitch (rotation on the x-axis).
Parameters:  
x = pitches the camera on the x axis.  
scalingFactor = always seems to be hex 0x3F800000 in native calls (1.000000 float). values of 1.0   
```

## Parameters
* **angle**: the angle to rotate the camera by
* **scalingFactor**: always seems to be set to 1.0 in native calls
