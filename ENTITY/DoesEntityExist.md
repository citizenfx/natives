---
ns: ENTITY
---

## DOES_ENTITY_EXIST

```c
// 0x7239B21A38F536BA 0x3AC90869
BOOL DOES_ENTITY_EXIST(Entity entity);
```

Checks whether an entity exists in the game world.

## Parameters

- **entity**: The entity to check if it exists.

## Return value

Whether the entity exists or not.

## Examples

```lua
local currentVehicle = GetVehiclePedIsIn(PlayerPedId(), false)

if DoesEntityExist(currentVehicle) then
    DeleteEntity(currentVehicle)
end
```

```js
const currentVehicle = GetVehiclePedIsIn(PlayerPedId(), false);

if (DoesEntityExist(currentVehicle)) {
  DeleteEntity(currentVehicle);
}
```

```cs
using static CitizenFX.Core.Native.API
// ...

int currentVehicle = GetVehiclePedIsIn(PlayerPedId(), false);

if(DoesEntityExist(currentVehicle))
{
    DeleteEntity(currentVehicle);
}

// or the preferred use of C# wrapper
Vehicle currentVehicle = Game.PlayerPed.CurrentVehicle;

// DoesEntityExist already invoked using Game.PlayerPed.CurrentVehicle
if(currentVehicle != null)
{
    currentVehicle.Delete();
}
```
