---
ns: VEHICLE
---
## IS_VEHICLE_SIREN_ON

```c
// 0x4C9BF537BE2634B2 0x25EB5873
BOOL IS_VEHICLE_SIREN_ON(Vehicle vehicle);
```
Returns whether the vehicle's lights and sirens are on.

## Parameters
* **vehicle**: 

## Return value
Returns false if siren and lights are disabled or true if they are enabled.

## Examples
```lua
local veh = GetVehiclePedIsIn(PlayerPedId())
print(tostring(IsVehicleSirenOn(veh))
```


