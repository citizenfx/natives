---
ns: ENTITY
---
## GET_ENTITY_HEALTH

```c
// 0xEEF059FAD016D209 0x8E3222B7
int GET_ENTITY_HEALTH(Entity entity);
```

```
Returns an integer value of entity's current health.  
Example of range for ped:  
- Player [0 to 200]  
- Ped [100 to 200]  
- Vehicle [0 to 1000]  
- Object [0 to 1000]  
Health is actually a float value but this native casts it to int.  
In order to get the actual value, do:  
float health = *(float *)(entityAddress + 0x280);  
```

## Parameters
* **entity**: 

## Return value
