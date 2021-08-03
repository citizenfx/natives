---
ns: VEHICLE
---
## IS_VEHICLE_SEAT_FREE

```c
// 0x22AC59A870E6A669 0xDAF42B02
BOOL IS_VEHICLE_SEAT_FREE(Vehicle vehicle, int seatIndex);
```

Seat indices range from -1 to [`GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS`](#_0xA7C4F2C6E744A550) minus one.

```c
// CTaskExitVehicleSeat::eSeatPosition - 1
enum eSeatPosition
{
    SF_FrontDriverSide = -1,
    SF_FrontPassengerSide = 0,
    SF_BackDriverSide = 1,
    SF_BackPassengerSide = 2,
    SF_AltFrontDriverSide = 3,
    SF_AltFrontPassengerSide = 4,
    SF_AltBackDriverSide = 5,
    SF_AltBackPassengerSide = 6,
};
```

```
NativeDB Added Parameter 3: BOOL isTaskRunning

isTaskRunning = on true the function returns already false while a task on the target seat is running (TASK_ENTER_VEHICLE/TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT) - on false only when a ped is finally sitting in the seat.
```

## Parameters
* **vehicle**: The vehicle to check.
* **seatIndex**: The eSeatPosition or -2 for **any** vehicle seat.

## Return value
