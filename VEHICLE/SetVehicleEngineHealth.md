---
ns: VEHICLE
---
## SET_VEHICLE_ENGINE_HEALTH

```c
// 0x45F6D8EEF34ABEF1 0x1B760FB5
void SET_VEHICLE_ENGINE_HEALTH(Vehicle vehicle, float health);
```

```
1000.0 is max health  
Begins leaking gas at around 650 health  
-999.90002441406 appears to be minimum health, although nothing special occurs <- false statement  
-------------------------  
Minimum: -4000.0 
Maximum: 1000.0
-4000: Engine is destroyed  
0.0 and below: Engine catches fire and health rapidly declines  
300.0: Engine is smoking and losing functionality  
1000.0: Engine is perfect

Health must be entered as a floating point. If a whole integer is passed, the engine health is set to 0.0
```

## Parameters
* **vehicle**: 
* **health**: 

