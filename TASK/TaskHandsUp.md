---
ns: TASK
---
## TASK_HANDS_UP

```c
// 0xF2EAB31979A7F910 0x8DCC19C5
void TASK_HANDS_UP(Ped ped, int duration, Ped facingPed, int timeToFacePed, int flags);
```

```
In the scripts, p3 was always -1.  
p3 seems to be duration or timeout of turn animation.  
Also facingPed can be 0 or -1 so ped will just raise hands up.  

ENUM TASK_HANDS_UP_FLAGS
	HANDS_UP_NOTHING					= 0,
	HANDS_UP_STRAIGHT_TO_LOOP				= 1
ENDENUM
```

## Parameters
* **ped**: 
* **duration**: 
* **facingPed**: 
* **timeToFacePed**: 
* **flags**: 

