---
ns: ENTITY
---

## SET_ENTITY_ALPHA

```c
// 0x44A0870B7E92D7C0 0xAE667CB0
void SET_ENTITY_ALPHA(Entity entity, int alphaLevel, int skin);
```

```
skin - everything alpha except skin
Set entity alpha level. Ranging from 0 to 255 but chnages occur after every 20 percent (after every 51).
```

```
NativeDB Parameter 2: BOOL skin
```

## Parameters

- **entity**: The entity the alpha will be changed for.
- **alphaLevel**: The alpha level between 0-255.
- **skin**: Whether to not change alpha level of the entity skin.

## Examples

```lua
SetEntityAlpha(PlayerPedId(), 51, false)
```

```js
SetEntityAlpha(PlayerPedId(), 51, false);
```

```csharp
using static CitizenFX.Core.Native.API;
// ...

SetEntityAlpha(PlayerPedId(), 51, false);

// or the preferred use of C# wrapper
Game.PlayerPed.Opacity = 51;
```
