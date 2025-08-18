---
ns: VEHICLE
---
## FULLY_CHARGE_NITROUS

```c
// 0x1A2BCC8C636F9226
void FULLY_CHARGE_NITROUS(Vehicle vehicle);
```

```
NativeDB Introduced: v3095
```

Recharges the nitrous system of the specified vehicle to its maximum capacity. This action sets the nitrous charge duration to the maximum limit defined by previous settings applied through [`SET_OVERRIDE_NITROUS_LEVEL`](#_0xC8E9B6B71B8E660D).

## Parameters
* **vehicle**: The vehicle whose nitrous system is to be fully recharged.

## Examples

```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in. 
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Check if the vehicle exists in the game world.
if vehicle == 0 then return end

-- Set nitrous modifications with SET_OVERRIDE_NITROUS_LEVEL since this native require a durationMod to be specified.
SetOverrideNitrousLevel(vehicle, true, 1.5, 2.0, 0.5, false)

-- After setting the modifiers, fully recharge the nitrous system to the new max defined.
FullyChargeNitrous(vehicle)
```

```js
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Set nitrous modifications with SET_OVERRIDE_NITROUS_LEVEL since this native require a durationMod to be specified.
SetOverrideNitrousLevel(vehicle, true, 1.5, 2.0, 0.5, false);

// After setting the modifiers, fully recharge the nitrous system to the new max defined.
FullyChargeNitrous(vehicle);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Set nitrous modifications with SET_OVERRIDE_NITROUS_LEVEL since this native require a durationMod to be specified.
SetOverrideNitrousLevel(vehicle, true, 1.5, 2.0, 0.5, false);

// After setting the modifiers, fully recharge the nitrous system to the new max defined.
FullyChargeNitrous(vehicle);
```
