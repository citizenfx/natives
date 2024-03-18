---
ns: VEHICLE
aliases: ["0x26D99D5A82FD18E8"]
---
## SET_DISABLE_BMX_EXTRA_TRICK_FORCES

```c
// 0x26D99D5A82FD18E8
void SET_DISABLE_BMX_EXTRA_TRICK_FORCES(cs_type(Any) BOOL disableExtraTrickForces);
```

Disables the additional physics forces applied to BMX bikes that enable them to perform tricks.

```
NativeDB Introduced: v463
```

## Parameters
* **disableExtraTrickForces**: Set to `true` to disable the extra forces applied for tricks on BMX bicycles, making the bike behave more like a regular bicycle without trick capabilities. Set to `false` to allow BMX bikes to perform tricks normally.

## Examples
```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the BMX bike the player is currently riding
local bmx = GetVehiclePedIsIn(playerPed, false)

-- If the player is not riding a BMX bike, return
if not IsThisModelABicycle(GetEntityModel(bmx)) then return end

-- Disable the extra forces applied to BMX bikes for tricks
SetDisableBmxExtraTrickForces(bmx, true)
```

```javascript
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the BMX bike the player is currently riding
const bmx = GetVehiclePedIsIn(playerPed, false);

// If the player is not riding a BMX bike, return
if (!IsThisModelABicycle(GetEntityModel(bmx))) return;

// Disable the extra forces applied to BMX bikes for tricks
SetDisableBmxExtraTrickForces(bmx, true);
```

```csharp
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
Ped playerPed = PlayerPedId();

// Retrieve the BMX bike the player is currently riding
Vehicle bmx = GetVehiclePedIsIn(playerPed, false);

// If the player is not riding a BMX bike, return
if (!IsThisModelABicycle(GetEntityModel(bmx))) return;

// Disable the extra forces applied to BMX bikes for tricks
SetDisableBmxExtraTrickForces(bmx, true);
```