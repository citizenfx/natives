---
ns: VEHICLE
aliases: ["0x877C1EAEAC531023"]
---
## _SET_CARGOBOB_HOOK_POSITION

```c
// 0x877C1EAEAC531023 0x3A8AB081
void _SET_CARGOBOB_HOOK_POSITION(Vehicle cargobob, float xOffset, float yOffset, int state);
```

```
For now, I changed the last one from bool to int.  
According to scripts specifically 'fm_mission_controller' this last parameter is 'false/0' when its called after the create rope native above is called for the magnet and 'true/1' after the create rope native above is called for the hook.  
```

## Parameters
* **cargobob**: 
* **xOffset**: 
* **yOffset**: 
* **state**: 

