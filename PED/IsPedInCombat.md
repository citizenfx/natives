---
ns: PED
---
## IS_PED_IN_COMBAT

```c
// 0x4859F1FC66A6278E 0xFE027CB5
BOOL IS_PED_IN_COMBAT(Ped ped, Ped target);
```

```
Checks to see if ped and target are in combat with eachother. Only goes one-way: if target is engaged in combat with ped but ped has not yet reacted, the function will return false until ped starts fighting back.  
p1 is usually 0 in the scripts because it gets the ped id during the task sequence. For instance: PED::IS_PED_IN_COMBAT(l_42E[4/*14*/], PLAYER::PLAYER_PED_ID()) // armenian2.ct4: 43794  
```

## Parameters
* **ped**: 
* **target**: 

## Return value
