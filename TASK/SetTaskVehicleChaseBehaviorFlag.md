---
ns: TASK
---
## SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG

```c
// 0xCC665AAC360D31E7 0x2A83083F
void SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG(Ped ped, int flag, BOOL set);
```


## Parameters
* **ped**: 
* **flag**: 
* **set**: 

```
* Flag 8: Medium-aggressive boxing tactic with a bit of PIT
* Flag 1: Aggressive ramming of suspect
* Flag 2: Ram attempts
* Flag 32: Stay back from suspect, no tactical contact. Convoy-like.
* Flag 16: Ramming, seems to be slightly less aggressive than 1-2.
```
