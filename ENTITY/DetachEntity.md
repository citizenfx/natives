---
ns: ENTITY
---
## DETACH_ENTITY

```c
// 0x961AC54BF0613F5D 0xC8EFCB41
void DETACH_ENTITY(Entity entity, BOOL p1, BOOL collision);
```

```
p1 and p2 have no effect   
maybe a quick disassembly will tell us what they do  
the statement below seems to be false. when I tried it with 2 vehicles:  
if p2 is set to true, the both entities won't collide with the other until the distance between them is above 4 meters.  
```

## Parameters
* **entity**: 
* **p1**: 
* **collision**: 

