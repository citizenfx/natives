---
ns: ENTITY
---

## DELETE_ENTITY

```c
// 0xAE3CBE5BF394C9C9 0xFAA3D236
void DELETE_ENTITY(Entity* entity);
```

Deletes the specified entity, and invalidates the passed handle (i.e. in/out argument).

## Parameters
- **entity**: The entity to delete.


## Examples

```lua
local light = GetEntityModel(prop_streetlight_01)
local lightEntity = CreateObject(light, 0, 0, 0, false, false, false)
if not DoesEntityExist(lightEntity) then return end
    DeleteEntity(lightEntity)
```