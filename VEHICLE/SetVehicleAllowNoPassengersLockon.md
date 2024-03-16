---
ns: VEHICLE
---
## SET_VEHICLE_ALLOW_NO_PASSENGERS_LOCKON

```c
// 0x5D14D4154BFE7B2C 0x8BAAC437
void SET_VEHICLE_ALLOW_NO_PASSENGERS_LOCKON(Vehicle vehicle, BOOL allowLockon);
```

Allows a vehicle to be targeted despite having no passengers with homing missiles.

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The vehicle for which to modify lock-on capability.
* **allowLockon**: `true` to allow the vehicle to be locked on even with no passengers, `false` to require passengers for lock-on capability.