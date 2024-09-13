---
ns: VEHICLE
aliases: ["0xE3EBAAE484798530", "_SET_BOAT_FROZEN_WHEN_ANCHORED"]
---
## SET_BOAT_REMAINS_ANCHORED_WHILE_PLAYER_IS_DRIVER

```c
// 0xE3EBAAE484798530 0x0ED84792
void SET_BOAT_REMAINS_ANCHORED_WHILE_PLAYER_IS_DRIVER(Vehicle boat, BOOL toggle);
```

Sets whether a boat should remain anchored even when a player is driving it.

**Note**: This native is always used with [SET_BOAT_ANCHOR](#_0x75DBEC174AEEAD10).

```
NativeDB Introduced: v323
```


## Parameters
* **boat**: The target boat.
* **toggle**: Set the anchoring behavior. If `true`, the boat will remain anchored even when a player is driving. If `false`, normal anchoring behavior applies (anchor is raised when a player drives).

## Examples
```lua
local boat = GetVehiclePedIsIn(PlayerPedId(), false)
if not boat or not IsThisModelABoat(GetEntityModel(boat)) then return end

SetBoatRemainsAnchoredWhilePlayerIsDriver(boat, true)
SetBoatAnchor(boat, true)
```

```js
const boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (!boat || !IsThisModelABoat(GetEntityModel(boat))) return;

SetBoatRemainsAnchoredWhilePlayerIsDriver(boat, true);
SetBoatAnchor(boat, true);
```

```cs
using static CitizenFX.Core.Native.API;

int boat = GetVehiclePedIsIn(PlayerPedId(), false);
if (boat == 0 || !IsThisModelABoat(GetEntityModel(boat))) return;

SetBoatRemainsAnchoredWhilePlayerIsDriver(boat, true);
SetBoatAnchor(boat, true);
```