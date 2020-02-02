---
ns: VEHICLE
---
## IS_VEHICLE_SEAT_FREE

```c
// 0x22AC59A870E6A669 0xDAF42B02
BOOL IS_VEHICLE_SEAT_FREE(Vehicle vehicle, int seatIndex);
```

```
Has an additional BOOL parameter since version [???].  
Check if a vehicle seat is free.  
-1 being the driver seat.  
Use GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 for last seat index.  
```

```
NativeDB Added Parameter 3: BOOL p2
```

## Parameters
* **vehicle**: 
* **seatIndex**: 

## Return value
