---
ns: VEHICLE
---
## GET_PED_IN_VEHICLE_SEAT

```c
// 0xBB40DD2270B65366 0x388FDE9A
Ped GET_PED_IN_VEHICLE_SEAT(Vehicle vehicle, int index);
```

Gets the ped in the specified seat of the passed vehicle.

If there is no ped in the seat, and the game considers the vehicle as ambient population, this will create a random occupant ped in the seat, which may be cleaned up by the game fairly soon if not marked as script-owned mission entity.

Seat indexes:
* -1 = Driver
* 0 = Front Right Passenger
* 1 = Back Left Passenger
* 2 = Back Right Passenger
* 3 = Further Back Left Passenger (vehicles > 4 seats)
* 4 = Further Back Right Passenger (vehicles > 4 seats)
* etc.

One can use GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) to get the amount of seats in a vehicle.

**NativeDB Added Parameter 3**: BOOL p2 (uses a different GetOccupant function)

## Parameters
* **vehicle**: The vehicle to get the ped for.
* **index**: The seat index.

## Return value
A handle to a ped in the specified vehicle seat, or 0 if no such ped existed.
