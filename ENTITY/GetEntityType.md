---
ns: ENTITY
---
## GET_ENTITY_TYPE

```c
// 0x8ACD366038D14505 0x0B1BD08D
int GET_ENTITY_TYPE(Entity entity);
```

Gets the type of entity for a given entity.

## Parameters
* **entity**: 

## Return value
the entity type of the given entity as a integer.

0 = no entity
1 = ped
2 = vehicle
3 = object

## Examples

```lua
local entityType = GetEntityType(PlayerPedId()) -- entityType should be '1'
```