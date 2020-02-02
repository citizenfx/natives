---
ns: ENTITY
---

## FREEZE_ENTITY_POSITION

```c
// 0x428CA6DBD1094446 0x65C16D57
void FREEZE_ENTITY_POSITION(Entity entity, BOOL toggle);
```

```
No, this should be called SET_ENTITY_KINEMATIC. It does more than just "freeze" it's position.
^Rockstar Devs named it like that, Now cry about it.
```

Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.

## Parameters

- **entity**: The entity to freeze/unfreeze.
- **toggle**: Freeze or unfreeze entity.

## Examples

```lua
FreezeEntityPosition(PlayerPedId(), true)
```

```js
FreezeEntityPosition(PlayerPedId(), true);
```

```cs
using static CitizenFX.Core.Native.API;
// ...

FreezeEntityPosition(PlayerPedId(), true);

// or the preferred use of C# wrapper
Game.PlayerPed.IsPositionFrozen = true;
```
