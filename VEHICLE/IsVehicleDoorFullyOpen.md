---
ns: VEHICLE
---
## IS_VEHICLE_DOOR_FULLY_OPEN

```c
// 0x3E933CFF7B111C22 0xC2385B6F
BOOL IS_VEHICLE_DOOR_FULLY_OPEN(Vehicle vehicle, int doorIndex);
```

See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#_0x93D9BD300D7789E5)

## Parameters
* **vehicle**: The vehicle to check.
* **doorIndex**: The index of the door to check.

## Return value
A bool indiciating if the specified door is fully open on the specified vehicle.