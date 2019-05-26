---
ns: PED
---
## GET_VEHICLE_PED_IS_IN

```c
// 0x9A9112A0FE9A4713 0xAFE92319
Vehicle GET_VEHICLE_PED_IS_IN(Ped ped, BOOL lastVehicle);
```

Gets the vehicle the specified Ped is/was in depending on bool value.  

## Parameters
* **ped**: The target ped
* **lastVehicle**: False = CurrentVehicle, True = LastVehicle

## Return value
The vehicle id. Returns 0 if the ped is/was not in a vehicle.
