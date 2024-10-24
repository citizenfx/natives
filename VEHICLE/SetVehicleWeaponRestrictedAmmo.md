---
ns: VEHICLE
aliases: ["0x44CD1F493DB2A0A6", "_SET_VEHICLE_WEAPON_CAPACITY"]
---
## SET_VEHICLE_WEAPON_RESTRICTED_AMMO

```c
// 0x44CD1F493DB2A0A6
void SET_VEHICLE_WEAPON_RESTRICTED_AMMO(Vehicle vehicle, int weaponIndex, int ammoCount);
```
Sets a limited number of ammo for a particular vehicle weapon index on a vehicle.  

Information about weapon indexes can be found in `handling.meta`. 

In the example given below, `uWeaponHash` defines weapon hashes for the vehicle. Each `<Item>` corresponds to an index starting from `0`.

```
<uWeaponHash>
    <Item>VEHICLE_WEAPON_PLAYER_BUZZARD</Item>  <!-- Index: 0 -->
    <Item>VEHICLE_WEAPON_SPACE_ROCKET</Item>    <!-- Index: 1 -->
    <Item>VEHICLE_WEAPON_SEARCHLIGHT</Item>     <!-- Index: 2 -->
</uWeaponHash>
```

## Parameters
* **vehicle**: The vehicle handle
* **weaponIndex**: The weapon index we're setting ammo for (between `0` and `3`), see description for more.
* **ammoCount**: When set positive, will count down with every fire and prevent firing at `0`. Set `-1` to disable restricted ammo.

