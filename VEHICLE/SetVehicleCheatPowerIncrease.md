---
ns: VEHICLE
aliases: ["_SET_VEHICLE_ENGINE_TORQUE_MULTIPLIER"]
---
## SET_VEHICLE_CHEAT_POWER_INCREASE

```c
// 0xB59E4BD37AE292DB 0x642DA5AA
void SET_VEHICLE_CHEAT_POWER_INCREASE(Vehicle vehicle, float value);
```

```
<1.0 - Decreased torque
=1.0 - Default torque
>1.0 - Increased torque
Negative values will cause the vehicle to go backwards instead of forwards while accelerating.
value - is between 0.2 and 1.8 in the decompiled scripts.
This needs to be called every frame to take effect.
```

## Parameters
* **vehicle**: 
* **value**: 

