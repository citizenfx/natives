---
ns: CAM
---
## GET_GAMEPLAY_CAM_ROT

```c
// 0x837765A25378F0BB 0x13A010B5
Vector3 GET_GAMEPLAY_CAM_ROT(int rotationOrder);
```

This function takes a rotation order and outputs a `Vector3` in degrees. 

It first calls a game function to calculate these values given the rotation order and effectively multiplies those values by `180/PI`, hence degrees since the function it calls outputs radians which are then converted to degrees.

## Parameters
* **rotationOrder**: The order of rotation, see [`GET_ENTITY_ROTATION`](#_0xAFBD61CC738D9EB9)

## Return value
A `Vector3` representing the gameplay camera rotation in degrees.

## Examples
```lua
local camRot = GetGameplayCamRot(0) -- vector3(-14.74518, 0.05254443, 95.24616)
Citizen.Trace(string.format("Cam Rotation is x: %f, y: %f, z: %f", camRot.x, camRot.y, camRot.z))
```