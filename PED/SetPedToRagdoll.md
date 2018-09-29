---
ns: PED
---
## SET_PED_TO_RAGDOLL

```c
// 0xAE99FB955581844A 0x83CB5052
BOOL SET_PED_TO_RAGDOLL(Ped ped, int time1, int time2, int ragdollType, BOOL p4, BOOL p5, BOOL p6);
```

```
time1- Time Ped is in ragdoll mode(ms)  
time2- Unknown time, in milliseconds  
ragdollType-  
0 : Normal ragdoll  
1 : Falls with stiff legs/body  
2 : Narrow leg stumble(may not fall)  
3 : Wide leg stumble(may not fall)  
p4, p5, p6- No idea. In R*'s scripts they are usually either "true, true, false" or "false, false, false".  
EDIT 3/11/16: unclear what 'mircoseconds' mean-- a microsecond is 1000x a ms, so time2 must be 1000x time1?  more testing needed.  -sob  
Edit Mar 21, 2017: removed part about time2 being the microseconds version of time1. this just isn't correct. time2 is in milliseconds, and time1 and time2 don't seem to be connected in any way.  
```

## Parameters
* **ped**: 
* **time1**: 
* **time2**: 
* **ragdollType**: 
* **p4**: 
* **p5**: 
* **p6**: 

## Return value
