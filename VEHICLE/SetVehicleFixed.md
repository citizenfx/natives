---
ns: VEHICLE
---
## SET_VEHICLE_FIXED

```c
// 0x115722B1B9C14C1C 0x17469AA1
void SET_VEHICLE_FIXED(Vehicle vehicle);
```
Fix a given vehicle.
If the vehicle's engine's broken then you cannot fix it with this native.

## Parameters
* **vehicle**: The vehicle that will be fixed

## Examples
```lua
local localPlayerPed = GetPlayerPed(-1)
local localVehicle = GetVehiclePedIsIn(localPlayerPed, false)
SetVehicleFixed(localVehicle)
```
