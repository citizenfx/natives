---
ns: VEHICLE
aliases: ["0xEDBC8405B3895CC9"]
---
## SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE

```c
// 0xEDBC8405B3895CC9
void SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE(Vehicle helicopter, cs_type(Any) bool disableExplode);
```

Prevents a helicopter from exploding due to relatively minor body damage. This native can be particularly useful in gameplay scenarios or missions where helicopters are subject to damage that would not realistically cause an explosion, ensuring they remain operational unless subjected to more significant damage.

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

```javascript
// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the helicopter the player is currently in.
const helicopter = GetVehiclePedIsIn(playerPed, false);

// If the player is not in a helicopter, or the vehicle is not a helicopter, return.
if (helicopter === 0 || !IsThisModelAHeli(GetEntityModel(helicopter))) return;

// Disable explosion from body damage for the helicopter.
SetDisableHeliExplodeFromBodyDamage(helicopter, true);
```

```csharp
using static CitizenFX.Core.Native.API;

// Retrieve the player ped.
Ped playerPed = PlayerPedId();

// Retrieve the helicopter the player is currently in.
Vehicle helicopter = GetVehiclePedIsIn(playerPed, false);

// If the player is not in a helicopter, or the vehicle is not a helicopter, return.
if (helicopter == 0 || !IsThisModelAHeli(GetEntityModel(helicopter))) return;

// Disable explosion from body damage for the helicopter.
SetDisableHeliExplodeFromBodyDamage(helicopter, true);
```