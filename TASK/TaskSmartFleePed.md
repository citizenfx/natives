---
ns: TASK
---
## TASK_SMART_FLEE_PED

```c
// 0x22B0D0E37CCB840D 0xE52EB560
void TASK_SMART_FLEE_PED(Ped ped, Ped fleeTarget, float distance, Any fleeTime, BOOL p4, BOOL p5);
```

```
Makes a ped run away from another ped (fleeTarget).  
distance = ped will flee this distance.  
fleeTime = ped will flee for this amount of time, set to "-1" to flee forever  

Word of warning: Make sure SET_PED_KEEP_TASK(false) is called. When KeepTask is true with this native, the game WILL crash! 
```

## Parameters
* **ped**: 
* **fleeTarget**: 
* **distance**: 
* **fleeTime**: 
* **p4**: 
* **p5**: 

