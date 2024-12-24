---
ns: VEHICLE
aliases: ["0xEDBC8405B3895CC9"]
---
## SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE

```c
// 0xEDBC8405B3895CC9
void SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE(Vehicle helicopter, cs_type(Any) BOOL disableExplode);
```

This works on helicopters and planes.

Prevents a helicopter from exploding due to relatively minor body damage. 

```
NativeDB Introduced: v1103
```

## Parameters
* **helicopter**: The helicopter to apply this setting to.
* **disableExplode**: `true` to disable explosion from body damage on collision; `false` to allow explosions as normal.

## Examples
```lua
-- Retrieve the player ped.
local playerPed = PlayerPedId()

-- Retrieve the helicopter the player is currently in.
local helicopter = GetVehiclePedIsIn(playerPed, false)

-- If the player is not in a helicopter, or the vehicle is not a helicopter, return.
if (helicopter == 0) or (not IsThisModelAHeli(GetEntityModel(helicopter))) then return end

-- Disable explosion from body damage for the helicopter.
SetDisableHeliExplodeFromBodyDamage(helicopter, true)
```

```js
// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the helicopter the player is currently in.
const helicopter = GetVehiclePedIsIn(playerPed, false);

// If the player is not in a helicopter, or the vehicle is not a helicopter, return.
if (helicopter === 0 || !IsThisModelAHeli(GetEntityModel(helicopter))) return;

// Disable explosion from body damage for the helicopter.
SetDisableHeliExplodeFromBodyDamage(helicopter, true);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped.
int playerPed = PlayerPedId();

// Retrieve the helicopter the player is currently in.
int helicopter = GetVehiclePedIsIn(playerPed, false);

// If the player is not in a helicopter, or the vehicle is not a helicopter, return.
if (helicopter == 0 || !IsThisModelAHeli(GetEntityModel(helicopter))) return;

// Disable explosion from body damage for the helicopter.
SetDisableHeliExplodeFromBodyDamage(helicopter, true);
```
