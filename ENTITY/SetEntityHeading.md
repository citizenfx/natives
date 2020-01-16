---
ns: ENTITY
---

## SET_ENTITY_HEADING

```c
// 0x8E2530AA8ADA980E 0xE0FF064D
void SET_ENTITY_HEADING(Entity entity, float heading);
```

Set the heading of an entity in degrees also known as "Yaw".

## Parameters

- **entity**: The entity to set the heading for.
- **heading**: The heading in degrees.

## Examples

```lua
SetEntityHeading(PlayerPedId(), 40.0)
```

```js
SetEntityHeading(PlayerPedId(), 40);
```

```cs
using static CitizenFX.Core.Native.API;
// ...

SetEntityHeading(PlayerPedId(), 40.0f);

// or the preferred use of C# wrapper
Game.PlayerPed.Heading = 40.0f;
```
