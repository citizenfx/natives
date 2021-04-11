---
ns: ENTITY
---
## IS_ENTITY_ATTACHED

```c
// 0xB346476EF1A64897 0xEC1479D5
BOOL IS_ENTITY_ATTACHED(Entity entity);
```

## Parameters
* **entity**: The entity to check if it is attached to another entity.

## Return value
Whether the entity is attached to another entity.

## Examples

```lua
local ped = PlayerPedId()

if IsEntityAttached(ped) then
    DetachEntity(ped, true, true)
end
```

```js
int ped = PlayerPedId();

if(IsEntityAttached(ped)) {
    DetachEntity(ped, true, true);
}
```

```cs
using static CitizenFX.Core.Native.API;
// ...

int ped = PlayerPedId();

if(IsEntityAttached(ped))
{
    DetachEntity(ped, true, true);
}

// or the preferred use of C# wrapper
if(Game.PlayerPed.IsAttached()) {
    Game.PlayerPed.Detach();
}
```
