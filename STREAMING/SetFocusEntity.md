---
ns: STREAMING
---
## SET_FOCUS_ENTITY

```c
// 0x198F77705FA0931D 0x18DB04AC
void SET_FOCUS_ENTITY(Entity entity);
```

```
It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.  
```

## Parameters
* **entity**: 

