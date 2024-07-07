---
ns: CAM
---
## SET_CAM_ROT

```c
// 0x85973643155D0B07 0xEE38B3C1
void SET_CAM_ROT(Cam cam, float rotX, float rotY, float rotZ, int rotationOrder);
```

Sets the rotation of the camera.

## Parameters
* **cam**: The camera handle to use, in order to change the rotation
* **rotX**: Rotation on X
* **rotY**: Rotation on Y
* **rotZ**: Rotation on Z
* **rotationOrder**: The order of rotation, see [`GET_ENTITY_ROTATION`](#_0xAFBD61CC738D9EB9)

## Examples
```lua
-- We need a valid camera handle for this to work.
local theCamHandle = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
SetCamRot(theCamHandle, 0.1, 0.2, 0.3, 0)
```

