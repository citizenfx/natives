---
ns: PED
---
## RESET_PED_MOVEMENT_CLIPSET

```c
// 0xAA74EC0CB0AAEA2C 0xB83CEE93
void RESET_PED_MOVEMENT_CLIPSET(Ped ped, float transitionSpeed);
```

```
// resets the ped's movement clipset immediately.  
PED::RESET_PED_MOVEMENT_CLIPSET(PLAYER::PLAYER_PED_ID(), 0.0);  
```

## Parameters
* **ped**: 
* **transitionSpeed**: time in seconds it takes to transition from one movement clipset to another.

