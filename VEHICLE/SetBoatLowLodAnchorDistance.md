---
ns: VEHICLE
aliases: ["0xE842A9398079BD82","_SET_BOAT_ANCHOR_BUOYANCY_COEFFICIENT", "_SET_BOAT_MOVEMENT_RESISTANCE"]
---
## SET_BOAT_LOW_LOD_ANCHOR_DISTANCE

```c
// 0xE842A9398079BD82 0x66FA450C
void SET_BOAT_LOW_LOD_ANCHOR_DISTANCE(Vehicle boat, float value);
```

Sets the distance from the player at which anchored boats switch between high and low LOD (Level of Detail) buoyancy mode.

```
NativeDB Introduced: v323
```

## Parameters
* **boat**: The target boat.
* **value**: The distance at which the LOD switch occurs. Set to `-1.0` to reset the LOD distance to the default value.

## Examples

```lua
local boat = GetVehiclePedIsIn(PlayerPedId(), false)
if not boat or not IsThisModelABoat(GetEntityModel(boat)) then return end

-- Set the low LOD anchor distance to 100 units
SetBoatLowLodAnchorDistance(boat, 100.0)
print("Set low LOD anchor distance to 100 units")
```

```js
const boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (!boat || !IsThisModelABoat(GetEntityModel(boat))) return;

// Set the low LOD anchor distance to 100 units
SetBoatLowLodAnchorDistance(boat, 100.0);
console.log("Set low LOD anchor distance to 100 units");
```

```cs
using static CitizenFX.Core.Native.API;

int boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (boat == 0 || !IsThisModelABoat(GetEntityModel(boat))) return;

// Set the low LOD anchor distance to 100 units
SetBoatLowLodAnchorDistance(boat, 100.0f);
Debug.WriteLine("Set low LOD anchor distance to 100 units");
```