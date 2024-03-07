---
ns: CAM
---
## CREATE_CAMERA

```c
// 0x5E3CF89C6BCCA67D 0x5D6739AE
Cam CREATE_CAMERA(Hash camHash, BOOL active);
```
Creates a camera with the specified camera hash, You can use `SET_CAM_` natives to manipulate the camera.  
Make sure to call [RENDER_SCRIPT_CAMS](#_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.

```
NativeDB Introduced: v323
```

### Camera hashes:
- 26379945 for DEFAULT_SCRIPTED_CAMERA 
- 964613260 for DEFAULT_ANIMATED_CAMERA
- 180543640 for DEFAULT_SPLINE_CAMERA
- -2001091 for DEFAULT_SCRIPTED_FLY_CAMERA
- 1775630800 for TIMED_SPLINE_CAMERA
- 1665938388 for CUSTOM_TIMED_SPLINE_CAMERA
- 457439121 for ROUNDED_SPLINE_CAMERA
- -119532588 for SMOOTHED_SPLINE_CAMERA

## Parameters
* **camHash**: The hash of the camera type
* **active**: Set to true if you wish to make this new camera the active camera.

## Return value
A camera handle referencing the camera that was created.



## Examples
```lua
local cam = CreateCamera(26379945, true) -- creates a camera with the "DEFAULT_SCRIPTED_CAMERA" type
RenderScriptCams(true, false, 0, true, true)
```

```js
const cam = CreateCamera(26379945, true); // creates a camera with the "DEFAULT_SCRIPTED_CAMERA" type
RenderScriptCams(true, false, 0, true, true)
```

```cs
using static CitizenFX.Core.Native.API;
// ...
int handle = CreateCamera(26379945, true); // creates a camera with the "DEFAULT_SCRIPTED_CAMERA" type
Camera cam = new Camera(handle);
```