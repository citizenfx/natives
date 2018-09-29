---
ns: ENTITY
---
## GET_ENTITY_TYPE

```c
// 0x8ACD366038D14505 0x0B1BD08D
int GET_ENTITY_TYPE(Entity entity);
```

```
Returns:  
0 = no entity  
1 = ped  
2 = vehicle  
3 = object  
This is weird, because in memory atleast on xbox360 it stores it from testing with a variety of (ped, vehicle, and objects).  
03   
04   
05   
The above is more then likely true for the native's return, but if you were to skip using the native it's a bit weird it returns different results.  
```

## Parameters
* **entity**: 

## Return value
