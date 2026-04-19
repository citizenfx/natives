---
ns: VEHICLE
aliases: ["_IS_ANY_VEHICLE_SEAT_EMPTY"]
---
## ARE_ANY_VEHICLE_SEATS_FREE

```c
// 0x2D34FC3BC4ADB780 0x648E685A
BOOL ARE_ANY_VEHICLE_SEATS_FREE(Vehicle vehicle);
```

Returns `true` when the vehicle has at least one seat with no ped assigned to it. Vehicles with no seats in their model (trailers, prop carriages) and invalid handles both return `false`.

Dead peds still count as occupying a seat until the body is removed, so a vehicle full of corpses returns `false`. Peds tasked to enter the vehicle but not yet inserted do not occupy their target seat.

For per-seat queries use [IS_VEHICLE_SEAT_FREE](#_0x22AC59A870E6A669), and to resolve which ped holds a specific seat use [GET_PED_IN_VEHICLE_SEAT](#_0xBB40BBB9B9A067B).

## Parameters
* **vehicle**: The vehicle handle to check.

## Return value
Returns `true` if any seat on the vehicle is unoccupied, `false` if every seat is filled or the handle is not a valid vehicle.

## Examples

```lua
-- Print whether the vehicle the player is in has a free seat
RegisterCommand("seatcheck", function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle == 0 then return end
    if AreAnyVehicleSeatsFree(vehicle) then
        print("Room available.")
    else
        print("Vehicle is full.")
    end
end, false)
```

```js
// Print whether the vehicle the player is in has a free seat
RegisterCommand("seatcheck", () => {
    const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
    if (vehicle === 0) return;
    if (AreAnyVehicleSeatsFree(vehicle)) {
        console.log("Room available.");
    } else {
        console.log("Vehicle is full.");
    }
}, false);
```

```cs
using static CitizenFX.Core.Native.API;

// Print whether the vehicle the player is in has a free seat
RegisterCommand("seatcheck", new Action<int, List<object>, string>((source, args, raw) =>
{
    int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
    if (vehicle == 0) return;
    if (AreAnyVehicleSeatsFree(vehicle))
    {
        Debug.WriteLine("Room available.");
    }
    else
    {
        Debug.WriteLine("Vehicle is full.");
    }
}), false);
```
