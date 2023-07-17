---
ns: ENTITY
---
## GET_ENTITY_LOD_DIST

```c
// 0x4159C2762B5791D6 0x4DA3D51F
int GET_ENTITY_LOD_DIST(Entity entity);
```

Returns the LOD distance of an entity.  

## Parameters
* **entity**: 

## Return value
LOD Distance of a given entity in an integer.

## Examples

```lua
local light = GetEntityModel(prop_streetlight_01)
local lodDist = GetEntityLodDist(light)
```