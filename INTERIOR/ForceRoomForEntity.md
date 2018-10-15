---
ns: INTERIOR
---
## FORCE_ROOM_FOR_ENTITY

```c
// 0x52923C4710DD9907 0x10BD4435
void FORCE_ROOM_FOR_ENTITY(Entity entity, int interiorID, Hash roomHashKey);
```

```
This seems to force load the room with roomHashKey in interior with interiorID for entity, any other room is empty, if the interior is already loaded, it will clear the other rooms from entities.
```

## Parameters
* **entity**: 
* **interiorID**: 
* **roomHashKey**: 

