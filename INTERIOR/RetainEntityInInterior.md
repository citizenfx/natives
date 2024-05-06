---
ns: INTERIOR
aliases: ["_0x82EBB79E258FA2B7"]
---
## RETAIN_ENTITY_IN_INTERIOR

```c
// 0x82EBB79E258FA2B7 0xE645E162
void RETAIN_ENTITY_IN_INTERIOR(Entity entity, int interiorID);
```

Adds the entity to the interior's retain list, ensuring its persistence upon interior loading. Additionally, owned script entities in interiors are automatically retained upon unloading.

```
NativeDB Introduced: v323
```

## Parameters
* **entity**: The entity to be retained within the interior.
* **interiorID**: The ID of the interior where the entity should be retained.

