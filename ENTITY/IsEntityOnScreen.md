---
ns: ENTITY
---
## IS_ENTITY_ON_SCREEN

```c
// 0xE659E47AF827484B 0xC1FEC5ED
BOOL IS_ENTITY_ON_SCREEN(Entity entity);
```

```
Returns true if the entity is in between the minimum and maximum values for the 2d screen coords.   
This means that it will return true even if the entity is behind a wall for example, as long as you're looking at their location.   
Chipping  
```

## Parameters
* **entity**: 

## Return value
