---
ns: ENTITY
aliases: ["0x1A092BB0C3808B96"]
---
## SET_ENTITY_USE_MAX_DISTANCE_FOR_WATER_REFLECTION

```c
// 0x1A092BB0C3808B96
void SET_ENTITY_USE_MAX_DISTANCE_FOR_WATER_REFLECTION(Entity entity, BOOL useMaxDistance);
```

Adjusts whether an entity should be considered for inclusion in water reflections based on a maximum distance check. This native can be utilized to optimize performance or to achieve specific visual effects involving water reflections in the game environment.

```
NativeDB Introduced: v323
```

## Parameters
* **entity**: The entity for which to set the water reflection distance check.
* **useMaxDistance**: Set to `true` to enforce a maximum distance check for the entity's inclusion in water reflections, or `false` to include the entity in water reflections regardless of distance.