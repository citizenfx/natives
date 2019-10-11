---
ns: VEHICLE
aliases: ["0x9BDA23BF666F0855","_SET_AIRCRAFT_COUNTERMEASURE_COUNT"]
---
## _SET_VEHICLE_COUNTERMEASURE_COUNT

```c
// 0x9BDA23BF666F0855
void _SET_VEHICLE_COUNTERMEASURE_COUNT(Vehicle aircraft, int count);
```

Similar to [`_SET_AIRCRAFT_BOMB_COUNT`](#_0xF4B2ED59DEB5D774), this sets the amount of countermeasures that are present on this vehicle.

Use [`_GET_AIRCRAFT_COUNTERMEASURE_COUNT`](#_0xF846AA63DF56B804) to get the current amount.

## Parameters
* **aircraft**: The vehicle to set the amount of countermeasures on.
* **count**: The amount of countermeasures to set on this vehicle.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
SetAircraftCountermeasureCount(vehicle, 10)
```

```cs
int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetAircraftCountermeasureCount(vehicle, 10);
```