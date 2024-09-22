---
ns: ENTITY
---
## IS_ENTITY_AT_ENTITY

```c
// 0x751B70C3D034E187 0xDABDCB52
BOOL IS_ENTITY_AT_ENTITY(Entity entity1, Entity entity2, float xSize, float ySize, float zSize, BOOL highlightArea, BOOL do3dCheck, int transportMode);
```

```
Checks if entity1 is within the box defined by x/y/zSize of entity2.  
Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0  
```

## Parameters
* **entity1**: 
* **entity2**: 
* **xSize**: 
* **ySize**: 
* **zSize**: 
* **highlightArea**:
* **do3dCheck**:
* **transportMode**:

## Return value
