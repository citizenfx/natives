---
ns: VEHICLE
---
## IS_VEHICLE_SEAT_FREE

```c
// 0x22AC59A870E6A669 0xDAF42B02
BOOL IS_VEHICLE_SEAT_FREE(Vehicle vehicle, int seatIndex);
```

```
Use GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 for last seat index.
isTaskRunning = on true the function returns already false while a task on the target seat is running (TASK_ENTER_VEHICLE/TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT) - on false only when a ped is finally sitting in the seat.
```

```
NativeDB Added Parameter 3: BOOL isTaskRunning
```

## Parameters
* **vehicle**: 
* **seatIndex**: 

## Return value
