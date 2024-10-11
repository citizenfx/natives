---
ns: VEHICLE
aliases: ["_CAN_BOAT_BE_ANCHORED_2", "_CAN_ANCHOR_BOAT_HERE_2"]
---
## CAN_ANCHOR_BOAT_HERE_IGNORE_PLAYERS

```c
// 0x24F4121D07579880
BOOL CAN_ANCHOR_BOAT_HERE_IGNORE_PLAYERS(Vehicle boat);
```

Checks if a boat can be anchored at its present position, ignoring any players standing on the boat.

```
NativeDB Introduced: v678
```

## Parameters
* **boat**: The boat to check.

## Return value
Returns `true` if the boat can be safely anchored at its current position (ignoring players on the boat), `false` otherwise.

## Examples
```lua
local boat = GetVehiclePedIsIn(PlayerPedId(), false)
if not boat or not IsThisModelABoat(GetEntityModel(boat)) then return end

if CanAnchorBoatHereIgnorePlayers(boat) then
    print("It's safe to anchor the boat here, ignoring players on the boat")
else
    print("It's not safe to anchor the boat at this location, even ignoring players")
end
```

```js
const boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (!boat || !IsThisModelABoat(GetEntityModel(boat))) return;

if (CanAnchorBoatHereIgnorePlayers(boat)) {
    console.log("It's safe to anchor the boat here, ignoring players on the boat");
} else {
    console.log("It's not safe to anchor the boat at this location, even ignoring players");
}
```

```cs
using static CitizenFX.Core.Native.API;

int boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (boat == 0 || !IsThisModelABoat(GetEntityModel(boat))) return;

if (CanAnchorBoatHereIgnorePlayers(boat))
{
    Debug.WriteLine("It's safe to anchor the boat here, ignoring players on the boat");
}
else
{
    Debug.WriteLine("It's not safe to anchor the boat at this location, even ignoring players");
}
```