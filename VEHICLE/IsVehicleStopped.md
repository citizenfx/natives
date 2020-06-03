---
ns: VEHICLE
---
## IS_VEHICLE_STOPPED

```c
// 0x5721B434AD84D57A 0x655F072C
BOOL IS_VEHICLE_STOPPED(Vehicle vehicle);
```

## Parameters
* **vehicle**: 

## Return value
True if the vehicle's speed is equal to, or less than 0.02 meters per second, or 0.05 meters per second, if the vehicle's handbrake is engaged. 
