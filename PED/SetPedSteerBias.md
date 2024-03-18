---
ns: PED
aliases: ["0x288DF530C92DAD6F"]
---
## SET_PED_STEER_BIAS

```c
// 0x288DF530C92DAD6F
void SET_PED_STEER_BIAS(Ped ped, float value);
```

```
Adds value to control input of ped controlling vehicle, explained below. Function only takes effect in the frame that it is called. For continued effect functions has to be called every frame.
Steer bias:  
-1.0 = full right  
0.0 = centered steering  
1.0 = full left
```

[`SET_VEHICLE_STEER_BIAS`](#_0x42A8EC77D5150CBE) for peds.

## Parameters
* **ped**: Ped to be affected
* **value**: How much should be added to the control input.

