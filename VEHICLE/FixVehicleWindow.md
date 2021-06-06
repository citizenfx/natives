---
ns: VEHICLE
---
## FIX_VEHICLE_WINDOW

```c
// 0x772282EBEB95E682 0x6B8E990D
cs_type(Any) void FIX_VEHICLE_WINDOW(Vehicle vehicle, int windowIndex);
```

See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#_0x46E571A0E20D01F1).

This function is coded to not work on vehicles of type: `CBike`, `Bmx`, `CBoat`, `CTrain`, and `CSubmarine`.

## Parameters
* **vehicle**: 
* **windowIndex**: 

## Return value
