---
ns: VEHICLE
---
## GET_VEHICLE_DIRT_LEVEL

```c
// 0x8F17BC8BA08DA62B 0xFD15C065
float GET_VEHICLE_DIRT_LEVEL(Vehicle vehicle);
```

Gets the dirt level of the passed vehicle 0.0-15.0

## Parameters
* **vehicle**: The vehicle to check.

## Return value
A number between 0.0 and 15.0 representing the vehicles dirt level.

## Examples
```lua
local Vehicle = GetVehiclePedIsUsing(PlayerPedId())
if GetVehicleDirtLevel(Vehicle) > 0.0 then -- if the cars dirt level is more than 0.0 then clean it.
  SetVehicleDirtLevel(Vehicle, 0.0) -- set the vehicle dirt level to 0.0
end
```
