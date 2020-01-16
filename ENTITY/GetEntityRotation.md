---
ns: ENTITY
---

## GET_ENTITY_ROTATION

```c
// 0xAFBD61CC738D9EB9 0x8FF45B04
Vector3 GET_ENTITY_ROTATION(Entity entity, int rotationOrder);
```

```
rotationOrder refers to the order yaw pitch roll is applied
value ranges from 0 to 5. What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.
Unsure what value corresponds to what rotation order, more testing will be needed for that.
------
rotationOrder is usually 2 in scripts
------
ENTITY::GET_ENTITY_ROTATION(Any p0, false or true);
if false than return from -180 to 180
if true than return from -90 to 90
---
As said above, the value of p1 affects the outcome. R* uses 1 and 2 instead of 0 and 1, so I marked it as an int.
What it returns is the yaw on the z part of the vector, which makes sense considering R* considers z as vertical. Here's a picture for those of you who don't understand pitch, yaw, and roll:
www.allstar.fiu.edu/aero/images/pic5-1.gif
I don't know why it returns a Vec3, but sometimes the values x and y go negative, yet they're always zero. Just use GET_ENTITY_PITCH and GET_ENTITY_ROLL for pitch and roll.
```

## Parameters

- **entity**: The entity to get the rotation for.
- **rotationOrder**: The order yaw, pitch and roll is applied. Usually 2.

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
