---
ns: VEHICLE
aliases: ["0x8181CE2F25CB9BB7", "_GET_VEHICLE_WEAPON_CAPACITY"]
---
## GET_VEHICLE_WEAPON_RESTRICTED_AMMO

```c
// 0x8181CE2F25CB9BB7
int GET_VEHICLE_WEAPON_RESTRICTED_AMMO(Vehicle vehicle, int weaponIndex);
```


## Parameters
* **vehicle**: The vehicle handle
* **weaponIndex**: The weapon index we're getting ammo for (see [SET_VEHICLE_WEAPON_RESTRICTED_AMMO](#_0x44CD1F493DB2A0A6) for information on how to access these slots).

## Return value
Gets the current restricted ammo count for a particular vehicle weapon index on a vehicle.