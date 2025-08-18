---
ns: VEHICLE
---
## _SET_VEHICLE_USE_HORN_BUTTON_FOR_NITROUS

```c
// 0x1980F68872CC2C3D
void _SET_VEHICLE_USE_HORN_BUTTON_FOR_NITROUS(Vehicle vehicle, BOOL bToggle);
```

```
NativeDB Introduced: v3095
```

Enables or disables the use of the vehicle's horn button for activating the nitrous system.

## Parameters
* **vehicle**: The vehicle where this setting will be applied.
* **bToggle**: If set to `true`, the horn button will activate the nitrous system; if `false`, it will not.

## Examples

```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in. 
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Check if the vehicle exists in the game world.
if vehicle == 0 then return end

-- Enable activating nitrous in the vehicle using the horn button.
SetVehicleUseHornButtonForNitrous(vehicle, true)
```

```js
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Enable activating nitrous in the vehicle using the horn button.
SetVehicleUseHornButtonForNitrous(vehicle, true);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Enable activating nitrous in the vehicle using the horn button.
SetVehicleUseHornButtonForNitrous(vehicle, true);
```
