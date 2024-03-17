---
ns: ENTITY
aliases: ["0xE66377CDDADA4810"]
---
## SET_ENTITY_MIRROR_REFLECTION_FLAG

```c
// 0xE66377CDDADA4810
void SET_ENTITY_MIRROR_REFLECTION_FLAG(Entity entity, BOOL reflectionFlag);
```

Sets the visibility flag for an entity's reflection in mirrors. This native can be used to toggle whether an entity is reflected in mirror surfaces within the game world.

```
NativeDB Introduced: v1734
```

## Parameters
* **entity**:The entity to set the reflection flag for.
* **reflectionFlag**: Set to `true` to enable the entity's reflection in mirrors, or `false` to disable it.