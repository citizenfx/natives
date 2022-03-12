---
ns: STATS
---
## STAT_SET_INT

```c
// 0xB3271D7AB655B441 0xC9CC1C5C
BOOL STAT_SET_INT(Hash statName, int value, BOOL save);
```

## Parameters
* **statName**: 
* **value**: 
* **save**: 

## Return value

## Examples
```lua
StatSetInt(`MPPLY_KILLS_PLAYERS`, 1337, true)
StatSetInt(`MP0_SHOOTING_ABILITY`, 100, true)
StatSetInt(`MP0_SHOOTING_ABILITY`, 100, true)
StatSetInt(`MP0_STEALTH_ABILITY`, 10, true)
StatSetInt(`MP0_FLYING_ABILITY`, 5, true)
StatSetInt(`MP0_WHEELIE_ABILITY`, 25, true)
StatSetInt(`MP0_LUNG_CAPACITY`, 35, true)
StatSetInt(`MP0_STRENGTH`, 15, true)
StatSetInt(`MP0_STAMINA`, 25, true)
```
