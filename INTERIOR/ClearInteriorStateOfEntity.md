---
ns: INTERIOR
aliases: ["_CLEAR_INTERIOR_FOR_ENTITY"]
---
## CLEAR_INTERIOR_STATE_OF_ENTITY

```c
// 0x85D5422B2039A70D
void CLEAR_INTERIOR_STATE_OF_ENTITY(Entity entity);
```

Forces an entity out of its retained interior state, effectively resetting it to a clean state in the exterior world.

```
NativeDB Introduced: v2189
```

## Parameters
* **entity**: The entity to be transitioned from its interior state to the exterior world.
