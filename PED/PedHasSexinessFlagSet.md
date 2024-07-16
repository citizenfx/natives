---
ns: PED
aliases: ["0x46B05BCAE43856B0"]
---
## PED_HAS_SEXINESS_FLAG_SET

```c
// 0x46B05BCAE43856B0 0x79543043
BOOL PED_HAS_SEXINESS_FLAG_SET(Ped ped, int flag);
```

```
Checks if the specified unknown flag is set in the ped's model.  
The engine itself seems to exclusively check for flags 1 and 4 (Might be inlined code of the check that checks for other flags).  
Game scripts exclusively check for flags 1 and 4.  
```

## Parameters
* **ped**: 
* **flag**: 

## Return value
