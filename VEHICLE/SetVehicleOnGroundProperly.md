---
ns: VEHICLE
---
## SET_VEHICLE_ON_GROUND_PROPERLY

```c
// 0x49733E92263139D1 0xE14FDBA6
BOOL SET_VEHICLE_ON_GROUND_PROPERLY(Vehicle vehicle, float p1);
```

```
Sets a vehicle on the ground on all wheels.  Returns whether or not the operation was successful.  
```

```
NativeDB Added Parameter 2: float p1
```

## Parameters
* **vehicle**: The vehicle to set on the ground properly
* **p1**: Might correlate to the vehicle size that needs to be set on the ground. Values used in scripts: 0f, 1f, 5f, 7f, 7.5f(for bikes apparently), 8f

## Return value
Returns `true` if the operation was successful, `false` otherwise.
