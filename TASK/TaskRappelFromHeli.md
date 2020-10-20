---
ns: BRAIN
---
## TASK_RAPPEL_FROM_HELI

```c
// 0x09693B0312F91649 0x2C7ADB93
void TASK_RAPPEL_FROM_HELI(Ped ped, int unused);
```

```
Only appears twice in the scripts.  
AI::TASK_RAPPEL_FROM_HELI(PLAYER::PLAYER_PED_ID(), 0x41200000);  
AI::TASK_RAPPEL_FROM_HELI(a_0, 0x41200000);  
Fixed, definitely not a float and since it's such a big number obviously not a bool. All though note when I thought it was a bool and set it to 1 it seemed to work that same as int 0x41200000.  
0x41200000 = 10.0 as float.  
Not all helicopters support rappelling.  
```

```
NativeDB Parameter 1: float unused
```

## Parameters
* **ped**: 
* **unused**: 

