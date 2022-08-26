---
ns: CAM
---
## CREATE_CAM

```c
// 0xC3981DCE61D9E13F 0xE9BF2A7D
Cam CREATE_CAM(char* camName, BOOL active);
```
Creates a camera with the specified cam name, You can use `SET_CAM_` natives to manipulate the camera.  
Make sure to call [RENDER_SCRIPT_CAMS](#_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.

### Camera names:
- DEFAULT_SCRIPTED_CAMERA 
- DEFAULT_ANIMATED_CAMERA
- DEFAULT_SPLINE_CAMERA
- DEFAULT_SCRIPTED_FLY_CAMERA
- TIMED_SPLINE_CAMERA
- CUSTOM_TIMED_SPLINE_CAMERA
- ROUNDED_SPLINE_CAMERA
- SMOOTHED_SPLINE_CAMERA

## Parameters
* **camName**: A string representing the camera type, the game will convert the string into a joaat hash upon native execution.
* **active**: Set to true if you wish to make this new camera the active camera.

## Return value
A camera handle referencing the camera that was created.

## Examples
```lua
local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
```

```js
const cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true);
```

```cs
int cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true);
```
