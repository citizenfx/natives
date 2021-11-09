---
ns: VEHICLE
---
## DISABLE_VEHICLE_WEAPON

```c
// 0xF4FC6A6F67D8D856 0xA688B7D1
void DISABLE_VEHICLE_WEAPON(BOOL disabled, Hash weaponHash, Vehicle vehicle, Ped owner);
```

Disables or enables a specific vehicle weapon.
This native needs to be called by every player, not just the driver. The weapon is only disabled for players who call the native, otherwise, if the driver shoots the weapon, other players can see it (but the driver himself can't).

An easier way to fully disable a vehicle's weapons would be removing the weapon from the vehicle's `handling.meta`.

## Parameters
* **disabled**: Whether the weapon should be disabled or not
* **weaponHash**: The hash key of the weapon (vehicle weapons can be found here: https://wiki.rage.mp/index.php?title=Weapons#Vehicle_weapon_names)
* **vehicle**: The vehicle handle to disable the weapon of
* **owner**: The ped that can shoot the weapon (for most cases, the ped in the driver seat)
