---
ns: VEHICLE
---
## GET_VEHICLE_MOD

```c
// 0x772960298DA26FDB 0xDC520069
int GET_VEHICLE_MOD(Vehicle vehicle, int modType);
```

## Parameters
* **vehicle**: The vehicle to get the mod of.
* **modType**: Refer to eVehicleModType in [`SET_VEHICLE_MOD`](#_0x6AF0636DDEDCB6DD).

## Return value
Returns the current modIndex, or `-1` if the mod is stock.
