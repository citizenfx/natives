---
ns: VEHICLE
aliases: ["0x7D6F9A3EF26136A0"]
---
## SET_VEHICLE_ALLOW_HOMING_MISSLE_LOCKON

```c
// 0x7D6F9A3EF26136A0 0xBB54ECCA
void SET_VEHICLE_ALLOW_HOMING_MISSLE_LOCKON(Vehicle vehicle, BOOL allowHomingMissileLockon, BOOL ignoreMissionVehicleCheck);
```

Allows a mission vehicle to disable or enable being targeted by homing missiles.

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The vehicle to set this behavior on.
* **allowHomingMissileLockon**: `true` to allow homing missile lock-on, `false` to disable it.
* **ignoreMissionVehicleCheck**: Set to `true` to ignore the mission vehicle check; otherwise, `false`. This parameter defaults to FALSE if not specified. 

## Examples
```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is in
local playerVehicle = GetVehiclePedIsIn(playerPed, false)

if (playerVehicle == 0) then return end -- The player is not in a vehicle

-- Disable homing missile lock-on for the player's vehicle
SetVehicleAllowHomingMissleLockon(playerVehicle, false, false)
```

```javascript
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
const playerVehicle = GetVehiclePedIsIn(playerPed, false);

if (playerVehicle === 0) return; // The player is not in a vehicle

// Disable homing missile lock-on for the player's vehicle
SetVehicleAllowHomingMissleLockon(playerVehicle, false, false);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
Ped playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
Vehicle playerVehicle = GetVehiclePedIsIn(playerPed, false);

if (playerVehicle == 0) return; // The player is not in a vehicle

// Disable homing missile lock-on for the player's vehicle
SetVehicleAllowHomingMissleLockon(playerVehicle, false, false);
```