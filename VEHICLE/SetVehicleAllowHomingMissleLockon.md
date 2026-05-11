---
ns: VEHICLE
aliases: [ "0x7D6F9A3EF26136A0" ]
---
## SET_VEHICLE_ALLOW_HOMING_MISSLE_LOCKON

```c
// 0x7D6F9A3EF26136A0 0xBB54ECCA
void SET_VEHICLE_ALLOW_HOMING_MISSLE_LOCKON(Vehicle vehicle, BOOL toggle, BOOL p2);
```

Sets whether homing missiles can lock onto the specified vehicle.
When set to `false`, players using a Homing Launcher or vehicles with homing missiles will not be able to lock onto the target vehicle.

## Parameters
* **vehicle**: The target vehicle.
* **toggle**: `true` to allow homing missile lock-on, `false` to disable it.
* **p2**: Unknown parameter, typically `false`.

## Examples
```lua
-- Disable homing missile lock-on for the player's current vehicle.
local playerPed = PlayerPedId()
local vehicle = GetVehiclePedIsIn(playerPed, false)

if vehicle ~= 0 then
    SetVehicleAllowHomingMissleLockon(vehicle, false, false)
end
```

```js
// Disable homing missile lock-on for the player's current vehicle.
const playerPed = PlayerPedId();
const vehicle = GetVehiclePedIsIn(playerPed, false);

if (vehicle !== 0) {
    SetVehicleAllowHomingMissleLockon(vehicle, false, false);
}
```

```cs
using static CitizenFX.Core.Native.API;

// Disable homing missile lock-on for the player's current vehicle.
int playerPed = PlayerPedId();
int vehicle = GetVehiclePedIsIn(playerPed, false);

if (vehicle != 0)
{
    SetVehicleAllowHomingMissleLockon(vehicle, false, false);
}
```

