---
ns: VEHICLE
aliases: ["0x407DC5E97DB1A4D3"]
---
## SET_VEHICLE_HOMING_LOCKEDONTO_STATE

```c
// 0x407DC5E97DB1A4D3
void SET_VEHICLE_HOMING_LOCKEDONTO_STATE(Vehicle vehicle, int lockOnState);
```

Sets the lock-on state for a target vehicle. This can be used to artificially set a vehicle as being locked onto by homing missiles, regardless of the actual presence of a missile or locking system.
`eHomingLockonState` values can be found in the [GET_VEHICLE_HOMING_LOCKON_STATE](#_0xE6B0E8CFC3633BF0) documentation.

```
NativeDB Introduced: v1493
```

## Parameters
* **vehicle**: The index of the vehicle to set the lock-on state for.
* **lockOnState**: The `eHomingLockonState` to apply to the vehicle, which determines how the vehicle is perceived by missile targeting systems.

## Examples
```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is in
local playerVehicle = GetVehiclePedIsIn(playerPed, false)

-- The player is not in a vehicle
if playerVehicle == 0 then return end

-- Set the lock-on state of the player's vehicle to "Homing missiles are currently acquiring a lock on a target."
SetVehicleHomingLockedontoState(playerVehicle, 1)
```

```javascript
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
const playerVehicle = GetVehiclePedIsIn(playerPed, false);

// The player is not in a vehicle
if (playerVehicle === 0) return;

// Set the lock-on state of the player's vehicle to "Homing missiles are currently acquiring a lock on a target."
SetVehicleHomingLockedontoState(playerVehicle, 1);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
Ped playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
Vehicle playerVehicle = GetVehiclePedIsIn(playerPed, false);

// The player is not in a vehicle

if (playerVehicle == 0) return;

// Set the lock-on state of the player's vehicle to "Homing missiles are currently acquiring a lock on a target."
SetVehicleHomingLockedontoState(playerVehicle, 1);
```