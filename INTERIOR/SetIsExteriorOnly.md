---
ns: INTERIOR
aliases: ["_0x7241CCB7D020DB69"]
---
## SET_IS_EXTERIOR_ONLY

```c
// 0x7241CCB7D020DB69
void SET_IS_EXTERIOR_ONLY(Entity entity, BOOL toggle);
```

Sets a flag on the specified object to indicate whether it should be restricted to exterior environments only.

```
NativeDB Introduced: v791
```

## Parameters
* **entity**: The entity for which to set the flag.
* **toggle**: A boolean value indicating whether the entity should be restricted to exterior environments (`true`) or not (`false`).