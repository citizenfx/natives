---
ns: VEHICLE
aliases: ["0x26E13D440E7F6064"]
---
## SET_DISABLE_EXPLODE_FROM_BODY_DAMAGE_ON_COLLISION

```c
// 0x26E13D440E7F6064
void SET_DISABLE_EXPLODE_FROM_BODY_DAMAGE_ON_COLLISION(Vehicle vehicle, cs_type(float) BOOL disableExplode);
```

Prevents a vehicle from exploding upon sustaining body damage from physical collisions. This can be used to increase the durability of vehicles in high-impact scenarios, such as races or combat situations, by preventing them from being destroyed due to collision-induced body damage.

For helicopters, you might want to check [SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE](#_0xEDBC8405B3895CC9) instead.

```
NativeDB Introduced: v1290
```

## Parameters
* **vehicle**: The vehicle to apply this setting to.
* **disableExplode**: `true` to disable explosion from body damage on collision; `false` to allow explosions as normal.

## Examples
```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Disable explosion from body damage on collision for the vehicle
SetDisableExplodeFromBodyDamageOnCollision(vehicle, true)
```

```javascript
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Disable explosion from body damage on collision for the vehicle
SetDisableExplodeFromBodyDamageOnCollision(vehicle, true);
```

```csharp
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
Ped playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in
Vehicle vehicle = GetVehiclePedIsIn(playerPed, false);

// Disable explosion from body damage on collision for the vehicle
SetDisableExplodeFromBodyDamageOnCollision(vehicle, true);
```
