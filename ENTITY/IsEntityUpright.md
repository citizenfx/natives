---
ns: ENTITY
---
## IS_ENTITY_UPRIGHT

```c
// 0x5333F526F6AB19AA 0x3BCDF4E1
BOOL IS_ENTITY_UPRIGHT(Entity entity, float angle);
```

```
// add this to your CSS to view code with formatting intact.  
// pre + hr + p { white-space: pre; } // -  
bool isEntityUpright(Entity e, float angle) {  
    bool bIsUpright; // bl@1  
    CDynamicEntity* pEntity; // rdi@1  
    bIsUpright = 0;  
    pEntity = getEntityAddressIfPhysical(e);  
    if (pEntity) {  
        bIsUpright = 0;  
        if (pEntity->Matrix.up.z >= cosf(angle * 0.017453292)) // radians(angle)  
            bIsUpright = 1;  
    }  
    return bIsUpright;  
}  
```

## Parameters
* **entity**: 
* **angle**: 

## Return value
