---
ns: VEHICLE
aliases: ["0x1DDA078D12879EEE", "_SET_VEHICLE_CAN_BE_LOCKED_ON"]
---
## SET_VEHICLE_ALLOW_HOMING_MISSLE_LOCKON_SYNCED

```c
// 0x1DDA078D12879EEE
void SET_VEHICLE_ALLOW_HOMING_MISSLE_LOCKON_SYNCED(Vehicle vehicle, BOOL allowHomingMissileLockon, BOOL ignoreMissionVehicleCheck);
```

Allows a mission vehicle to disable or enable being targeted by homing missiles in a manner that's synced over the network. This native sets a different flag than [`SET_VEHICLE_ALLOW_HOMING_MISSLE_LOCKON`](#_0x7D6F9A3EF26136A0).

```
NativeDB Introduced: v463
```

## Parameters
* **vehicle**: The vehicle to set this behavior on.
* **allowHomingMissileLockon**: `true` to allow homing missile lock-on, `false` to disable it.
* **ignoreMissionVehicleCheck**: Set to `true` to ignore the mission vehicle check; otherwise, `false`. This parameter defaults to `false` if not specified.

## Examples
```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is in
local playerVehicle = GetVehiclePedIsIn(playerPed, false)

if (playerVehicle == 0) then return end -- The player is not in a vehicle

-- Disable homing missile lock-on for the player's vehicle
SetVehicleAllowHomingMissleLockonSynced(playerVehicle, false, false)
```

```javascript
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
const playerVehicle = GetVehiclePedIsIn(playerPed, false);

if (playerVehicle === 0) return; // The player is not in a vehicle

// Disable homing missile lock-on for the player's vehicle
SetVehicleAllowHomingMissleLockonSynced(playerVehicle, false, false);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
Ped playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
Vehicle playerVehicle = GetVehiclePedIsIn(playerPed, false);

if (playerVehicle == 0) return; // The player is not in a vehicle

// Disable homing missile lock-on for the player's vehicle
SetVehicleAllowHomingMissleLockonSynced(playerVehicle, false, false);
```
