---
ns: VEHICLE
aliases: ["0x2467A2D807D37CA3","_GET_BOAT_ANCHOR","_CAN_BOAT_BE_ANCHORED"]
---
## CAN_ANCHOR_BOAT_HERE

```c
// 0x26C10ECBDA5D043B 0xE97A4F5E
BOOL CAN_ANCHOR_BOAT_HERE(Vehicle boat);
```

Checks if a boat can be anchored at its present position without possibly intersecting collision later.

```
NativeDB Introduced: v323
```

## Parameters
* **boat**: The boat to check.

## Return value
Returns `true` if the boat can be safely anchored at its current position, `false` otherwise.

## Examples
```lua
local boat = GetVehiclePedIsIn(PlayerPedId(), false)
if not boat or not IsThisModelABoat(GetEntityModel(boat)) then return end

if CanAnchorBoatHere(boat) then
    print("It's safe to anchor the boat here")
else
    print("It's not safe to anchor the boat at this location")
end
```

```js
const boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (!boat || !IsThisModelABoat(GetEntityModel(boat))) return;

if (CanAnchorBoatHere(boat)) {
    console.log("It's safe to anchor the boat here");
} else {
    console.log("It's not safe to anchor the boat at this location");
}
```

```cs
using static CitizenFX.Core.Native.API;

int boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (boat == 0 || !IsThisModelABoat(GetEntityModel(boat))) return;

if (CanAnchorBoatHere(boat))
{
    Debug.WriteLine("It's safe to anchor the boat here");
}
else
{
    Debug.WriteLine("It's not safe to anchor the boat at this location");
}
```