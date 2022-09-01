---
ns: CAM
---
## GET_CAM_ROT

```c
// 0x7D304C1C955E3E12 0xDAC84C9F
Vector3 GET_CAM_ROT(Cam cam, int rotationOrder);
```

Gets a camera's rotation by handle (`cam`) lookup, outputs a `Vector3` in degrees.

## Parameters
* **cam**: The camera handle.
* **rotationOrder**: The order of rotation, see [`GET_ENTITY_ROTATION`](#_0xAFBD61CC738D9EB9)

## Return value
A `Vector3` representing the camera rotation in degrees.

## Examples
```lua
-- We need a valid camera handle for this to work.
local theCamHandle = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

-- Let's set the camera rotation for illustrative purposes
SetCamRot(theCamHandle, 0.1, 0.2, 0.3, 0)

-- We are now able to get the camera rotation.
local camRot = GetCamRot(theCamHandle, 0) -- vector3(0.100000, 0.200000, 0.300000)
Citizen.Trace(string.format("Cam Rotation is x: %f, y: %f, z: %f", camRot.x, camRot.y, camRot.z))
```