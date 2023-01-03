---
ns: WEAPON
---
## REMOVE_ALL_PED_WEAPONS

```c
// 0xF25DF915FA38C5F3 0xA44CE817
void REMOVE_ALL_PED_WEAPONS(Ped ped, BOOL p1);
```

Parameter `p1` does not seem to be used or referenced in game binaries.  
**Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.

## Parameters
* **ped**: The ped entity
* **p1**: 

