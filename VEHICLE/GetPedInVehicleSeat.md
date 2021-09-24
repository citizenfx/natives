---
ns: VEHICLE
---
## GET_PED_IN_VEHICLE_SEAT

```c
// 0xBB40DD2270B65366 0x388FDE9A
Ped GET_PED_IN_VEHICLE_SEAT(Vehicle vehicle, int seatIndex);
```

Gets the ped in the specified seat of the passed vehicle.

If there is no ped in the seat, and the game considers the vehicle as ambient population, this will create a random occupant ped in the seat, which may be cleaned up by the game fairly soon if not marked as script-owned mission entity.

**NativeDB Added Parameter 3**: BOOL p2 (uses a different GetOccupant function)

## Parameters
* **vehicle**: The vehicle to get the ped for.
* **seatIndex**: See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#_0x22AC59A870E6A669).

## Return value
A handle to a ped in the specified vehicle seat, or 0 if no such ped existed.

## Examples
```lua
-- Checks if the player ped is in the drivers seat of the vehicle they are in.
if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then 
  print("The player is the driver of this vehicle.")
else
  print("The player is not the driver of this vehicle.")
end
```
