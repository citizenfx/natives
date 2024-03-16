---
ns: VEHICLE
aliases: ["0x6EAAEFC76ACC311F"]
---
## GET_VEHICLE_HOMING_LOCKEDONTO_STATE

```c
// 0x6EAAEFC76ACC311F
int GET_VEHICLE_HOMING_LOCKEDONTO_STATE(Vehicle vehicle);
```

Determines if another entity is locked onto the specified vehicle with homing missiles, returning the state of such lock-on attempts. You can set this state artificially with [`SET_VEHICLE_HOMING_LOCKEDONTO_STATE`](#_0x407DC5E97DB1A4D3).

```
NativeDB Introduced: v757
```

## Parameters
* **vehicle**: The vehicle to check for being targeted by homing missiles.

## Return value
Returns the lock-on state as an integer matching the `eHomingLockonState` enum.
Enum values can be found in the [GET_VEHICLE_HOMING_LOCKON_STATE](#_0xE6B0E8CFC3633BF0) documentation.