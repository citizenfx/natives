---
ns: VEHICLE
aliases: ["0xF846AA63DF56B804","_GET_AIRCRAFT_COUNTERMEASURE_COUNT"]
---
## _GET_VEHICLE_COUNTERMEASURE_COUNT

```c
// 0xF846AA63DF56B804
int _GET_VEHICLE_COUNTERMEASURE_COUNT(Vehicle aircraft);
```

Similar to [`_GET_AIRCRAFT_BOMB_COUNT`](#_0xEA12BD130D7569A1), this gets the amount of countermeasures that are present on this vehicle.

Use [`_SET_AIRCRAFT_COUNTERMEASURE_COUNT`](#_0x9BDA23BF666F0855) to set the current amount.

## Parameters
* **aircraft**: The vehicle to get the amount of countermeasures from.

## Return value
An int indicating the amount of countermeasures remaining on that plane.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
print("This plane has " .. GetAircraftCountermeasureCount(vehicle) .. " countermeasures left.")
```

```cs
int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
Debug.WriteLine("This plane has " + GetAircraftCountermeasureCount(vehicle) + " countermeasures left.");
```