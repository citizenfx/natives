---
ns: WEAPON
---
## SET_PED_GADGET

```c
// 0xD0D7B1E680ED4A1A 0x8A256D0A
void SET_PED_GADGET(Ped ped, Hash gadgetHash, BOOL equip);
```

Equips or removes a specific gadget for a ped.

```
NativeDB Introduced: v323
```

## Parameters
* **ped**: The Ped to which the gadget will be equipped or from which it will be removed.
* **gadgetHash**: The hash of the gadget. Typically, this is `0xFBAB5776` for `GADGET_PARACHUTE`
* **equip**: Set to `true` to equip the gadget. Currently, Rockstar's usage primarily involves equipping gadgets, with the removal of gadgets not explicitly documented.

## Examples
```lua
--  Retrieve the player ped.
local playerPed = PlayerPedId()

-- Retrieve the hash for the parachute gadget.
local gadgetHash = GetHashKey("GADGET_PARACHUTE")

--  Equip the parachute to the player ped.
SetPedGadget(playerPed, gadgetHash, true)
```

```js
//  Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the hash for the parachute gadget.
const gadgetHash = GetHashKey("GADGET_PARACHUTE");

//  Equip the parachute to the player ped.
SetPedGadget(playerPed, gadgetHash, true);
```

```csharp
using static CitizenFX.Core.Native.API;

//  Retrieve the player ped.
Ped playerPed = PlayerPedId();

// Retrieve the hash for the parachute gadget.
uint gadgetHash = (uint)GetHashKey("GADGET_PARACHUTE");

//  Equip the parachute to the player ped.
SetPedGadget(playerPed, gadgetHash, true);
```