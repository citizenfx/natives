---
ns: VEHICLE
aliases: ["_DOES_VEHICLE_HAVE_SEARCHLIGHT"]
---
## DOES_VEHICLE_HAVE_SEARCHLIGHT

```c
// 0x99015ED7DBEA5113
BOOL DOES_VEHICLE_HAVE_SEARCHLIGHT(Vehicle vehicle);
```

Determines whether the specified vehicle is equipped with a searchlight.

```
NativeDB Introduced: v2189
```

## Parameters
* **vehicle**: The vehicle to check for the presence of a searchlight.

## Return value
Returns `true` if the vehicle has a searchlight, `false` otherwise.