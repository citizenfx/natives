---
ns: ENTITY
---

## GET_ENTITY_HEADING

```c
// 0xE83D4F9BA2A38914 0x972CC383
float GET_ENTITY_HEADING(Entity entity);
```

```
Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.
```

## Parameters

- **entity**: The entity to get the heading from.

## Return value

The current entity heading.

## Examples

```lua
local heading = GetEntityHeading(PlayerPedId())
print(heading)
```

```js
const heading = GetEntityHeading(PlayerPedId());
console.log(`${heading}`);
```

```cs
using static CitizenFX.Core.Native.API;
// ...
float heading = GetEntityHeading(PlayerPedId());

// or the preferred use of C# wrapper
float heading = Game.PlayerPed.Heading;

Debug.WriteLine($"{heading}");
```
