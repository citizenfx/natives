---
ns: STATS
---
## STAT_SET_INT

```c
// 0xB3271D7AB655B441 0xC9CC1C5C
BOOL STAT_SET_INT(Hash statName, int value, BOOL save);
```

```
Add Cash example:  
for (int i = 0; i < 3; i++)  
{  
char statNameFull[32];  
sprintf_s(statNameFull, "SP%d_TOTAL_CASH", i);  
Hash hash = GAMEPLAY::GET_HASH_KEY(statNameFull);  
int val;  
STATS::STAT_GET_INT(hash, &val, -1);  
val += 1000000;  
STATS::STAT_SET_INT(hash, val, 1);  
}  
```

## Parameters
* **statName**: 
* **value**: 
* **save**: 

## Return value
