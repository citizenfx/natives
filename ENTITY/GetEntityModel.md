---
ns: ENTITY
---
## GET_ENTITY_MODEL

```c
// 0x9F47B058362C84B5 0xDAFCB3EC
Hash GET_ENTITY_MODEL(Entity entity);
```

Returns the model hash from an entity.

## Parameters
* **entity**: The entity to get the model for.

## Return value
The model hash of the entity.

## Examples

```lua
local hash = GetEntityModel(PlayerPedId())

if hash == `mp_m_freemode_01` then
    print("This player is using the male freemode model.")
end
```

```js
const hash = GetEntityModel(PlayerPedId());

if (hash === GetHashKey('mp_m_freemode_01')) {
  console.log('This player is using the male freemode model.');
}
```

```cs
using static CitizenFX.Core.Native.API;
// ...

uint hash = GetEntityModel(PlayerPedId());

if(hash == GetHashKey("mp_m_freemode_01"))
{
    Debug.WriteLine("This player is using the male freemode model.");
}

// or the preferred use of C# wrapper
if(Game.PlayerPed.Model.Hash == Game.GenerateHash("mp_m_freemode_01"))
{
    Debug.WriteLine("This player is using the male freemode model.");
}
```
