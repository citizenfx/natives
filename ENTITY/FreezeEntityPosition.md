---
ns: ENTITY
---
## FREEZE_ENTITY_POSITION

```c
// 0x428CA6DBD1094446 0x65C16D57
void FREEZE_ENTITY_POSITION(Entity entity, BOOL toggle);
```

Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using [`SET_ENTITY_COORDS`](#_0x06843DA7060A026B).

## Parameters
* **entity**: The entity to freeze/unfreeze.
* **toggle**: Freeze or unfreeze entity.

## Examples

```lua
-- Freeze the local player.

-- Retrieve the player ped
local playerPed = PlayerPedId() 

-- Freeze the ped
FreezeEntityPosition(playerPed, true)
```

```js
// Freeze the local player.

// Retrieve the player ped
const playerPed = PlayerPedId();

// Freeze the ped
FreezeEntityPosition(playerPed, true);
```

```cs
using static CitizenFX.Core.Native.API;
// Freeze the local player.

// Retrieve the player ped
int playerPed = PlayerPedId();

// Freeze the ped
FreezeEntityPosition(playerPed, true);

// or the preferred use of C# wrapper
Game.PlayerPed.IsPositionFrozen = true;
```
