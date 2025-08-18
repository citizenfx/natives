---
ns: VEHICLE
aliases: ["_SET_VEHICLE_NITRO_ENABLED"]
---
## SET_OVERRIDE_NITROUS_LEVEL

```c
// 0xC8E9B6B71B8E660D
void SET_OVERRIDE_NITROUS_LEVEL(Vehicle vehicle, BOOL override);
```

```
NativeDB Introduced: v1604
NativeDB Added Parameter 2 (2060): float durationMod : A multiplier applied to the default nitrous duration (default is 3 seconds). 
NativeDB Added Parameter 3 (2060): float power : A multiplier applied to the default nitrous power multiplier (default is 3).
NativeDB Added Parameter 4 (2060): float rechargeTime : A multiplier applied to the default nitrous recharge rate.
NativeDB Added Parameter 5 (2060): BOOL disableSound : A boolean to disable the default nitrous sound when the nitrous is active.
```

Overrides the default settings of a vehicle's nitrous system, allowing custom control over its performance characteristics.

## Parameters
* **vehicle**: The vehicle whose nitrous system is to be overridden.
* **override**: A boolean toggle to enable or disable the override settings.

## Examples

```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in. 
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Check if the vehicle exists in the game world.
if vehicle == 0 then return end

-- Configure the vehicle's nitrous system with custom settings for maximum effect.
SetOverrideNitrousLevel(vehicle, true, 100, 100, 99999999999, false);
```

```js
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Configure the vehicle's nitrous system with custom settings for maximum effect.
SetOverrideNitrousLevel(vehicle, true, 100, 100, 99999999999, false);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Configure the vehicle's nitrous system with custom settings for maximum effect.
SetOverrideNitrousLevel(vehicle, true, 100, 100, 99999999999, false);
```
