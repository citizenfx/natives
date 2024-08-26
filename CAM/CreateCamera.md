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

Take a look at [CREATE_CAM](#_0xC3981DCE61D9E13F) if you would like to see the available camera names.

```
NativeDB Introduced: v323
```

## Parameters
* **camHash**: The hash of the camera type, use [GET_HASH_KEY](#_0xD24D37CC275948CC) to get the camera hash from the name.
* **active**: Set to true if you wish to make this new camera the active camera.

## Return value
A camera handle referencing the camera that was created.



## Examples
```lua
-- creates a camera with the "DEFAULT_SCRIPTED_CAMERA" type
local cam = CreateCamera(GetHashKey("DEFAULT_SCRIPTED_CAMERA"), true)

RenderScriptCams(true, false, 0, true, true)
```

```js
// creates a camera with the "DEFAULT_SCRIPTED_CAMERA" type
const cam = CreateCamera(GetHashKey("DEFAULT_SCRIPTED_CAMERA"), true);

RenderScriptCams(true, false, 0, true, true)
```

```cs
using static CitizenFX.Core.Native.API;

// creates a camera with the "DEFAULT_SCRIPTED_CAMERA" type
int cam = CreateCamera(GetHashKey("DEFAULT_SCRIPTED_CAMERA"), true);

RenderScriptCams(true, false, 0, true, true);
```
