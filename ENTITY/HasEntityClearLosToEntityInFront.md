---
ns: ENTITY
---
## HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT

```c
// 0x0267D00AF114F17A 0x210D87C8
BOOL HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT(Entity entity1, Entity entity2);
```

```
Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.  
This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops  
```

## Parameters
* **entity1**: 
* **entity2**: 

## Return value
