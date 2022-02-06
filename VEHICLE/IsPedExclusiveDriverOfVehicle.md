---
ns: VEHICLE
aliases: ["0xB09D25E77C33EB3F", "_IS_PED_EXCLUSIVE_DRIVER_OF_VEHICLE"]
---
## IS_PED_EXCLUSIVE_DRIVER_OF_VEHICLE

```c
// 0xB09D25E77C33EB3F 0xFF62D324
BOOL IS_PED_EXCLUSIVE_DRIVER_OF_VEHICLE(Vehicle vehicle, Ped ped, int* outIndex);
```

## Parameters
* **vehicle**: 
* **ped**: 
* **outIndex**: The index for which the ped is exclusive. If ped is an exclusive driver, this will be set to 0 or 1, otherwise -1 if the ped isn't an exclusive driver.

## Return value
Returns true if ped is an exclusive driver of vehicle.
