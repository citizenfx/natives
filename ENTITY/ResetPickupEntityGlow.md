---
ns: ENTITY
aliases: ["0x490861B88F4FD846"]
---
## RESET_PICKUP_ENTITY_GLOW

```c
// 0x490861B88F4FD846
void RESET_PICKUP_ENTITY_GLOW(Entity entity);
```

```
NativeDB Introduced: v944
```

Reverts any alpha override applied to the entity and restarts its glow effect, typically used for pickups. This native is intended to restore the default visual state of a pickup entity after any modifications. This native is similar to [`RESET_ENTITY_ALPHA`](#_0x9B1E824FFBB7027A).

## Parameters
* **entity**: The entity for which to reset the glow effect and revert alpha changes.