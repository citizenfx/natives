---
ns: CAM
---
## RENDER_SCRIPT_CAMS

```c
// 0x07E5B515DB0636FC 0x74337969
void RENDER_SCRIPT_CAMS(BOOL render, BOOL ease, int easeTime, BOOL easeCoordsAnim, BOOL p4);
```

Renders the cams the current script.

```
NativeDB Added Parameter 6: Any p5
```

## Parameters
* **render**: Whether to render the cams or not.
* **ease **: If true it will make a smooth transition between the current camera and the new rendered camera.
* **easeTime **: The in milliseconds for the transition to happen.
* **easeCoordsAnim**: If false it will only do the smooth transition to the rotation and the coords will be set instantly.
* **p4**: Doesn't seem to change anything.

## Examples
```lua
local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true) -- We create the cam
SetCamCoord(cam, vector3(100.0, 100.0, 100.0)) -- We set the cam coords
RenderScriptCams(true, true, 2000, true, true) -- We render the camera with a smooth transition of 2000 ms
Wait(7000) -- We wait 5 seconds + 2 extra for the transition
DestroyCam(cam) -- Remove the cam
RenderScriptCams(false, false, 0, false, false) -- We reset to the default cam by setting the first value in false
```