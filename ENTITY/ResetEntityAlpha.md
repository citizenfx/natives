---
ns: ENTITY
---
## RESET_ENTITY_ALPHA

```c
// 0x9B1E824FFBB7027A 0x8A30761C
cs_type(Any) void RESET_ENTITY_ALPHA(Entity entity);
```

Reverts any override on an entity's alpha level (transparency) to its default state. This native is used when you need to restore the original visibility of an entity after having made it more or less transparent than normal.

```
NativeDB Introduced: v323
```

## Parameters
* **entity**: The entity for which to reset the alpha level.