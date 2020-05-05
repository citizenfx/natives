---
ns: PED
apiset: server
---
## GET_VEHICLE_PED_IS_IN

```c
Vehicle GET_VEHICLE_PED_IS_IN(Ped ped, BOOL lastVehicle);
```

Gets the vehicle the specified Ped is/was in depending on bool value.  

## Parameters
* **ped**: The target ped
* **lastVehicle**: False = CurrentVehicle, True = LastVehicle

## Return value
The vehicle id. Returns 0 if the ped is/was not in a vehicle.
