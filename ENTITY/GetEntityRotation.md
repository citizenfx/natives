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
enum rotOrder {
	EULER_XYZ = 0,
	EULER_XZY = 1,
	EULER_YXZ = 2,
	EULER_YZX = 3,
	EULER_ZXY = 4,
	EULER_ZYX = 5
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
