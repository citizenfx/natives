---
ns: VEHICLE
---
## SET_VEHICLE_DIRT_LEVEL

```c
// 0x79D3B596FE44EE8B 0x2B39128B
void SET_VEHICLE_DIRT_LEVEL(Vehicle vehicle, float dirtLevel);
```

Sets the dirt level of the passed vehicle.

## Parameters
* **vehicle**: The vehicle to set.
* **dirtLevel**: A number between 0.0 and 15.0 representing the vehicles dirt level.

## Examples
```lua
local Vehicle = GetVehiclePedIsUsing(PlayerPedId())
SetVehicleDirtLevel(Vehicle, 0.0) -- set the vehicle dirt level to 0.0
```
