---
ns: ENTITY
---
## GET_ENTITY_ROTATION

```c
// 0xAFBD61CC738D9EB9 0x8FF45B04
Vector3 GET_ENTITY_ROTATION(Entity entity, int rotationOrder);
```

**NOTE**: What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.


```c
enum eRotationOrder {
    // Rotate around the z-axis, then the y-axis and finally the x-axis.
    ROT_ZYX = 0,
    // Rotate around the y-axis, then the z-axis and finally the x-axis.
    ROT_YZX = 1,
    // Rotate around the z-axis, then the x-axis and finally the y-axis.
    ROT_ZXY = 2,
    // Rotate around the x-axis, then the z-axis and finally the y-axis.
    ROT_XZY = 3,
    // Rotate around the y-axis, then the x-axis and finally the z-axis.
    ROT_YXZ = 4,
    // Rotate around the x-axis, then the y-axis and finally the z-axis.
    ROT_XYZ = 5,
}
```

## Parameters
* **entity**: The entity to get the rotation for.
* **rotationOrder**: The order yaw, pitch and roll is applied. Usually 2.

## Return value
A vector where the Z coordinate is the yaw.

## Examples

```lua
local playerRotation = GetEntityRotation(PlayerPedId(), 2)
print(playerRotation)
```

```js
const [rotationX, rotationY, rotationZ] = GetEntityRotation(PlayerPedId(), 2);
console.log(`${rotationX} ${rotationY} ${rotationZ}`);
```

```cs
using static CitizenFX.Core.Native.API;
// ...

Vector3 playerRotation = GetEntityRotation(Game.PlayerPed.Handle, 2);

// or the preferred use of C# wrapper
Vector3 playerRotation = Game.PlayerPed.Rotation;

Debug.WriteLine($"{playerRotation}");
```
