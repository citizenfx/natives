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
local lightEntity = CreateObject(lightEntity, 0, 0, 0, False, False, False)
if DoesEntityExist(lightEntity) then
    DeleteEntity(lightEntity)
end
```