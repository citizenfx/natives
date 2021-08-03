---
ns: VEHICLE
aliases: ["0x639431E895B9AA57"]
---
## _IS_VEHICLE_SEAT_ACCESSIBLE

```c
// 0x639431E895B9AA57 0xAB0E79EB
BOOL _IS_VEHICLE_SEAT_ACCESSIBLE(Ped ped, Vehicle vehicle, cs_type(BOOL) int seatIndex, BOOL side, BOOL onEnter);
```

```
Check if a vehicle seat is accessible. If you park your vehicle near a wall and the ped cannot enter/exit this side, the return value toggles from true (not blocked) to false (blocked).
side = only relevant for bikes/motorcycles to check if the left (false)/right (true) side is blocked.
onEnter = check if you can enter (true) or exit (false) a vehicle.
```

## Parameters
* **ped**: 
* **vehicle**: The vehicle to check.
* **seatIndex**: See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#_0x22AC59A870E6A669).
* **side**: 
* **onEnter**: 

## Return value
