---
ns: ENTITY
---
## SET_ENTITY_ALPHA

```c
// 0x44A0870B7E92D7C0 0xAE667CB0
void SET_ENTITY_ALPHA(Entity entity, int alphaLevel, cs_type(int) BOOL skin);
```

This native sets the entity's alpha level.

## Parameters
* **entity**: The entity to change the alpha for.
* **alphaLevel**: The alpha level ranges from 0 to 255, but changes occur every 20% (every 51).
* **skin**: Whether or not to change the alpha of the entity's skin.

## Examples

```lua
SetEntityAlpha(PlayerPedId(), 51, false)
```

```js
SetEntityAlpha(PlayerPedId(), 51, false);
```

```cs
using static CitizenFX.Core.Native.API;
// ...

SetEntityAlpha(PlayerPedId(), 51, 0);

// or the preferred use of C# wrapper
Game.PlayerPed.Opacity = 51;
```
