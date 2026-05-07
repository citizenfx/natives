---
ns: VEHICLE
aliases: ["_SET_VEHICLE_ENGINE_POWER_MULTIPLIER"]
---
## MODIFY_VEHICLE_TOP_SPEED

```c
// 0x93A3996368C94158 0xE943B09C
void MODIFY_VEHICLE_TOP_SPEED(Vehicle vehicle, float percentChange);
```

Modifies a vehicle's top speed.

This is the native you have to call when trying to apply handling changes related to `fInitialDriveForce` and `fInitialDriveMaxFlatVel` via the [`SET_VEHICLE_HANDLING_FLOAT`](#_0x488C86D2) native, otherwise your changes won't apply.

Calling this native will initiate transmission setup for the given vehicle so any transmission related changes apply, it will also update the drag coefficient on the vehicle based on the percentage change.

## Parameters
* **vehicle**: The vehicle handle.
* **percentChange**: A percentage from 0 to 100, it can go past 100.

