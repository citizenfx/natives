---
ns: VEHICLE
---
## SET_VEHICLE_STEER_BIAS

```c
// 0x42A8EC77D5150CBE 0x7357C1EB
void SET_VEHICLE_STEER_BIAS(Vehicle vehicle, float value);
```

```
Locks the vehicle's steering to the desired angle, explained below.  
Requires to be called onTick. Steering is unlocked the moment the function stops being called on the vehicle.  
Steer bias:  
-1.0 = full right  
0.0 = centered steering  
1.0 = full left  
```

## Parameters
* **vehicle**: 
* **value**: 

