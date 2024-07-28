---
ns: CAM
---
## RENDER_SCRIPT_CAMS

```c
// 0x07E5B515DB0636FC 0x74337969
void RENDER_SCRIPT_CAMS(BOOL render, BOOL ease, int easeTime, BOOL p3, BOOL p4);
```

Renders the cams the current script

```
NativeDB Added Parameter 6: Any p5
```

## Parameters
* **render**: Whether to render the cams or not.
* **ease **: If true it will make a smooth transition between the current camera and the new rendered camera.
* **easeTime **: The in milliseconds for the transition to happen.
* **easeCoordsAnim**: If false it will only do the smooth transition to the rotation and the coords will be set instantly.
* **p4**: Doesn't seem to change anything.
