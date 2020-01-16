---
ns: ENTITY
---

## GET_ENTITY_HEALTH

```c
// 0xEEF059FAD016D209 0x8E3222B7
int GET_ENTITY_HEALTH(Entity entity);
```

```
Returns an integer value of entity's current health.
Example of range for ped:
- Player [0 to 200]
- Ped [100 to 200]
- Vehicle [0 to 1000]
- Object [0 to 1000]
Health is actually a float value but this native casts it to int.
In order to get the actual value, do:
float health = *(float *)(entityAddress + 0x280);
```

## Parameters

- **entity**: The entity to get the health from.

## Return value

The current entity health.

## Examples

```lua
local health = GetEntityHealth(PlayerPedId())
print(health)
```

```js
const health = GetEntityHealth(PlayerPedId());
console.log(`${health}`);
```

```cs
using static CitizenFX.Core.Native.API;
// ...
int health = GetEntityHealth(PlayerPedId());

// or the preferred use of C# wrapper
// Note: Returns 0-100 using this property.
int health = Game.PlayerPed.Health;

Debug.WriteLine($"{health}");
```
