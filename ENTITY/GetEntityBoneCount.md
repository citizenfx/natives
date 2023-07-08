---
ns: ENTITY
aliases: ["0xB328DCC3A3AA401B"]
---
## _GET_ENTITY_BONE_COUNT

```c
// 0xB328DCC3A3AA401B
int _GET_ENTITY_BONE_COUNT(Entity entity);
```

Returns the bone count of an entity.

## Parameters
* **entity**: 

## Return value
The total bone count of a given entity as an integer.

## Examples

```lua
local light = GetEntityModel(prop_streetlight_01)
local boneCount = GetEntityBoneCount(light)
```