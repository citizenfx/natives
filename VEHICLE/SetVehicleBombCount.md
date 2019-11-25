---
ns: VEHICLE
aliases: ["0xF4B2ED59DEB5D774","_SET_VEHICLE_BOMBS","_SET_AIRCRAFT_BOMB_COUNT"]
---
## _SET_VEHICLE_BOMB_COUNT

```c
// 0xF4B2ED59DEB5D774
void _SET_VEHICLE_BOMB_COUNT(Vehicle aircraft, int bombCount);
```

Sets the amount of bombs that this vehicle has. As far as I know, this does _not_ impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane. 

In decompiled scripts this is used to deduct from or add to the count whenever bombs are dropped or purchased/restocked. 

Use [`_GET_AIRCRAFT_BOMB_COUNT`](#_0xEA12BD130D7569A1) to get the amount of bombs on that vehicle.

## Parameters
* **aircraft**: The vehicle to set the bombCount on.
* **bombCount**: The amount of bombs to set for this vehicle.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
SetAircraftBombCount(vehicle, 10)
```

```cs
int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetAircraftBombCount(vehicle, 10);
```