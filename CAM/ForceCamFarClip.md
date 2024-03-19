---
ns: CAM
aliases: ["0xAABD62873FFB1A33"]
---
## FORCE_CAM_FAR_CLIP

```c
// 0xAABD62873FFB1A33
void FORCE_CAM_FAR_CLIP(Cam camera, cs_type(Any) float farClipDistance);
```

Forces a specific camera's far clip distance, overriding the distance limit imposed by the game's time cycle settings.

```
NativeDB Introduced: v2189
```

## Parameters
* **camera**: The handle of the camera whose far clip distance you wish to override.
* **farClipDistance**: The new far clip distance in meters you want to set for the camera.

## Examples
```lua
-- Create a custom camera and set it as the active camera
local customCamera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
SetCamActive(customCamera, true)
RenderScriptCams(true, false, 0, true, true)

-- Force the far clip distance of `customCamera` to 2000 meters
ForceCamFarClip(customCamera, 2000.0)
```

```js
// Create a custom camera and set it as the active camera
const customCamera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true);
SetCamActive(customCamera, true);
RenderScriptCams(true, false, 0, true, true);

// Force the far clip distance of `customCamera` to 2000 meters
ForceCamFarClip(customCamera, 2000.0);
```

```csharp
using static CitizenFX.Core.Native.API;

// Create a custom camera and set it as the active camera
Cam customCamera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true);
SetCamActive(customCamera, true);
RenderScriptCams(true, false, 0, true, true);

// Force the far clip distance of `customCamera` to 2000 meters
ForceCamFarClip(customCamera, 2000.0f);
```