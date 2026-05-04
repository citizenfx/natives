---
ns: VEHICLE
---
## DISABLE_VEHICLE_WEAPON

```c
// 0xF4FC6A6F67D8D856 0xA688B7D1
void DISABLE_VEHICLE_WEAPON(BOOL disabled, Hash weaponHash, Vehicle vehicle, Ped owner);
```

Disables or enables a specific weapon on a vehicle for a designated ped.

## Parameters
* **disabled**: A boolean indicating whether to disable (`true`) or enable (`false`) the weapon.
* **weaponHash**: The specific hash of the vehicle weapon (e.g., `GetHashKey("VEHICLE_WEAPON_TANK")`).
* **vehicle**: The vehicle entity handle.
* **owner**: The ped entity for whom the weapon is disabled. This acts as a ped-specific lock; the ped does not need to be inside the vehicle or in a specific seat when this native is called.

## Examples
```lua
-- Disables the Rhino's Tank gun for the local player
local ped = PlayerPedId()
local vehicle = GetVehiclePedIsIn(ped, false)
local weaponHash = GetHashKey("VEHICLE_WEAPON_TANK")

if vehicle ~= 0 then
    DisableVehicleWeapon(true, weaponHash, vehicle, ped)
end
```

```js
// Disables the Rhino's Tank gun for the local player
const ped = PlayerPedId();
const vehicle = GetVehiclePedIsIn(ped, false);
const weaponHash = GetHashKey("VEHICLE_WEAPON_TANK");

if (vehicle !== 0) {
    DisableVehicleWeapon(true, weaponHash, vehicle, ped);
}
```

```cs
using static CitizenFX.Core.Native.API;

// Disables the Rhino's Tank gun for the local player
int ped = PlayerPedId();
int vehicle = GetVehiclePedIsIn(ped, false);
uint weaponHash = (uint)GetHashKey("VEHICLE_WEAPON_TANK");

if (vehicle != 0) 
{
    DisableVehicleWeapon(true, weaponHash, vehicle, ped);
}
```
