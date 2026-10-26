---
ns: VEHICLE
---
## DOES_VEHICLE_HAVE_WEAPONS

```c
// 0x25ECB9F8017D98E0 0xB2E1E1FB
BOOL DOES_VEHICLE_HAVE_WEAPONS(Vehicle vehicle);
```

For any vehicle with the flags `FLAG_IS_TANK`, `FLAG_CREATE_WEAPON_MANAGER_ON_SPAWN`, `FLAG_HAS_TURRET_SEAT_ON_VEHICLE`, `FLAG_TURRET_MODS_ON_ROOF`, the native will return `1` regardless of whether the player is inside of the vehicle or not.

For any vehicles without the above flags, the native seems to only return `1` if the vehicle has weapons and the player is inside of the vehicle. Calling [`DOES_VEHICLE_HAVE_SEARCHLIGHT`](#_0x99015ED7DBEA5113) beforehand seems to solve this problem, if you wish to use this native to check on a vehicle in which the player is absent from.


## Parameters
* **vehicle**: 

## Return value
