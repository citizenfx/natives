---
ns: VEHICLE
aliases: ["0x41062318F23ED854", "SET_VEHICLE_EXCLUSIVE_DRIVER"]
---
## _SET_VEHICLE_ACTIVE_SOMETHING

```c
// 0x41062318F23ED854
void _SET_VEHICLE_ACTIVE_SOMETHING(Vehicle vehicle, cs_type(Ped) BOOL toggle);
```

Was incorrectly named `SET_VEHICLE_EXCLUSIVE_DRIVER` previously; likely `SET_VEHICLE_ACTIVE*` up to `SET_VEHICLE_ALA*`.
Unsure if native joaat hash is known.

Toggles a flag related to if the behaviour of `SET_VEHICLE_EXCLUSIVE_DRIVER` is enabled or disabled/ignored, however, doesn't enable that feature (or trigger script events related to it).

See [`SET_VEHICLE_EXCLUSIVE_DRIVER`](#_0xB5C51B5502E85E83).

## Parameters
* **vehicle**: 
* **toggle**: 

