---
ns: VEHICLE
---
## SET_VEHICLE_ENGINE_HEALTH

```c
// 0x45F6D8EEF34ABEF1 0x1B760FB5
void SET_VEHICLE_ENGINE_HEALTH(Vehicle vehicle, float health);
```

```
1000 is max health
Begins leaking gas at around 650 health
-999.90002441406 appears to be minimum health, although nothing special occurs <- false statement
-------------------------
Minimum: -4000
Maximum: 1000
-4000: Engine is destroyed
0 and below: Engine catches fire and health rapidly declines
300: Engine is smoking and losing functionality
1000: Engine is perfect
```

## Parameters
* **vehicle**: 
* **health**: 

