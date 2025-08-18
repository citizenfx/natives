---
ns: VEHICLE
---
## SET_NITROUS_IS_ACTIVE

```c
// 0x465EEA70AF251045
void SET_NITROUS_IS_ACTIVE(Vehicle vehicle, BOOL isActive);
```

```
NativeDB Introduced: 3095
```

Activates or deactivates the nitrous system in the specified vehicle, based on the boolean value provided.
You can clear the nitrous with [`CLEAR_NITROUS`](#_0xC889AE921400E1ED), if you want to have more control on the nitrous and those settings, use [`SET_OVERRIDE_NITROUS_LEVEL`](#_0xC8E9B6B71B8E660D)

## Parameters
* **vehicle**: The vehicle whose nitrous system is to be controlled.
* **isActive**: A boolean value where `true` activates the nitrous system and `false` deactivates it.

## Examples

```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in. 
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Check if the vehicle exists in the game world.
if vehicle == 0 then return end

 -- Enable the nitrous system on the vehicle.
SetNitrousIsActive(vehicle, true)
```

```js
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Enable the nitrous system on the vehicle.
SetNitrousIsActive(vehicle, true);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Enable the nitrous system on the vehicle.
SetNitrousIsActive(vehicle, true);
```
