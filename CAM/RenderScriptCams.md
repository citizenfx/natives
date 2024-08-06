---
ns: CAM
---
## RENDER_SCRIPT_CAMS

```c
// 0x07E5B515DB0636FC 0x74337969
void RENDER_SCRIPT_CAMS(BOOL render, BOOL ease, int easeTime, BOOL easeCoordsAnim, BOOL p4);
```

Renders the camera previously created with [CREATE_CAM](#_0xC3981DCE61D9E13F) or [CREATE_CAMERA](#_0x5E3CF89C6BCCA67D)

```
NativeDB Added Parameter 6: Any p5
```

## Parameters
* **render**: Whether to render the cams or not.
* **ease**: If true it will make a smooth transition between the current camera and the new rendered camera.
* **easeTime**: The in milliseconds for the transition to happen.
* **easeCoordsAnim**: If false it will only do the smooth transition to the rotation and the coords will be set instantly.
* **p4**: Doesn't seem to change anything.

## Examples
```lua
local casino = vector3(881.31, 74.71, 94.43)

-- Create the camera that will be used for RenderScriptCams
local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
-- Set the camera coordinates to be in front of the Casino
SetCamCoord(cam, casino.x, casino.y, casino.z)
-- Rotate the camera towards the casino
SetCamRot(cam, -25.0, 0.0, -124.22)

-- Render the camera and so a smooth transition for 2000ms
RenderScriptCams(true, true, 2000, false, true)

-- tell the game to load maps, collisions, objects, etc around the casino.
SetFocusPosAndVel(casino.x, casino.y, casino.z, 0.0, 0.0, 0.0)

 -- We wait 5 seconds + 2 extra for the transition
Wait(7000)
-- Remove the cam, we no longer need it
DestroyCam(cam) 

-- reset streaming focus to be at the local player ped
ClearFocus()
-- Stop rendering the script camera and interpolate back to their player ped
RenderScriptCams(false, true, 2000, false, false) 
```