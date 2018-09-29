---
ns: ENTITY
---
## GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS

```c
// 0x2274BC1C4885E333 0x6477EC9E
Vector3 GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS(Entity entity, float posX, float posY, float posZ);
```

```
Converts world coords (posX - Z) to coords relative to the entity  
Example:  
posX = 50  
posY = 1000  
posZ = 60  
Entity's coords are: x=30, y=1000, z=60.  
All three returned coords will then be in range of [-20,20] depending on rotation of the entity.  
```

## Parameters
* **entity**: 
* **posX**: 
* **posY**: 
* **posZ**: 

## Return value
