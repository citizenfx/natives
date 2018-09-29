---
ns: ENTITY
---
## HAS_ENTITY_COLLIDED_WITH_ANYTHING

```c
// 0x8BAD02F0368D9E14 0x662A2F41
BOOL HAS_ENTITY_COLLIDED_WITH_ANYTHING(Entity entity);
```

```
Called on tick.  
Tested with vehicles, returns true whenever the vehicle is touching any entity.  
Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.  
```

## Parameters
* **entity**: 

## Return value
