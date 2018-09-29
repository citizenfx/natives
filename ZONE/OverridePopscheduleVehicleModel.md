---
ns: ZONE
---
## OVERRIDE_POPSCHEDULE_VEHICLE_MODEL

```c
// 0x5F7D596BAC2E7777 0x3F0A3680
void OVERRIDE_POPSCHEDULE_VEHICLE_MODEL(int scheduleId, Hash vehicleHash);
```

```
Only used once in the decompiled scripts. Seems to be related to scripted vehicle generators.  
Modified example from "am_imp_exp.c4", line 6406:  
/* popSchedules[0] = ZONE::GET_ZONE_POPSCHEDULE(ZONE::GET_ZONE_AT_COORDS(891.3, 807.9, 188.1));  
etc.  
*/  
ZONE::OVERRIDE_POPSCHEDULE_VEHICLE_MODEL(popSchedules[index], vehicleHash);  
STREAMING::REQUEST_MODEL(vehicleHash);  
```

## Parameters
* **scheduleId**: 
* **vehicleHash**: 

