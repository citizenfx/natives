---
ns: ENTITY
---
## DOES_ENTITY_HAVE_PHYSICS

```c
// 0xDA95EA3317CC5064 0x9BCD2979
BOOL DOES_ENTITY_HAVE_PHYSICS(Entity entity);
```

returns if an entity has physics.

## Parameters
* **entity**: 

## Return value
Returns if the given entity has physics or not as a boolean.

## Examples

```lua
local light = GetEntityModel(prop_streetlight_01)
local physics = DoesEntityHavePhysics(light)
```