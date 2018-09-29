---
ns: PED
---
## GET_PED_CONFIG_FLAG

```c
// 0x7EE53118C892B513 0xABE98267
BOOL GET_PED_CONFIG_FLAG(Ped ped, int flagId, BOOL p2);
```

```
p2 is always 1 in the scripts.  
if (GET_PED_CONFIG_FLAG(ped, 78, 1))  
= returns true if ped is aiming/shooting a gun  
```

## Parameters
* **ped**: 
* **flagId**: 
* **p2**: 

## Return value
