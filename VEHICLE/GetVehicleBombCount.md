---
ns: VEHICLE
aliases: ["0xEA12BD130D7569A1","_GET_AIRCRAFT_BOMB_COUNT"]
---
## _GET_VEHICLE_BOMB_COUNT

```c
// 0xEA12BD130D7569A1
int _GET_VEHICLE_BOMB_COUNT(Vehicle aircraft);
```

Gets the amount of bombs that this vehicle has. As far as I know, this does _not_ impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane. 

In decompiled scripts this is used to check if the vehicle has enough bombs before a bomb can be dropped (bombs are dropped by using [`_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_WITH_EXTRA_PARAMS`](#_0xBFE5756E7407064A)). 

Use [`_SET_AIRCRAFT_BOMB_COUNT`](#_0xF4B2ED59DEB5D774) to set the amount of bombs on that vehicle.

## Parameters
* **aircraft**: The vehicle to get the amount of bombs from.

## Return value
An int indicating the amount of bombs remaining on that plane.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
print("This plane has " .. GetAircraftBombCount(vehicle) .. " bombs left.")
```

```cs
int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
Debug.WriteLine("This plane has " + GetAircraftBombCount(vehicle) + " bombs left.");
```