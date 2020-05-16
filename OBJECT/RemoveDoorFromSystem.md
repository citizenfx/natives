---
ns: OBJECT
---
## REMOVE_DOOR_FROM_SYSTEM

```c
// 0x464D8E1427156FE4 0x00253286
void REMOVE_DOOR_FROM_SYSTEM(Hash doorHash);
```

CDoor and CDoorSystemData still internally allocated (and their associations between doorHash, modelHash, and coordinates).

Only its NetObj removed and flag ``*(v2 + 192) |= 8u`` (1604 retail) toggled.

## Parameters
* **doorHash**: 

