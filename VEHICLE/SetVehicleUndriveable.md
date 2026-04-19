---
ns: VEHICLE
---
## SET_VEHICLE_UNDRIVEABLE

```c
// 0x8ABA6AF54B942B95 0x48D02A4E
void SET_VEHICLE_UNDRIVEABLE(Vehicle vehicle, BOOL toggle);
```

Marks a vehicle as undriveable. While this is set, the engine cannot be started by anyone. Peds can still open the door, sit in the driver seat and close the door and try to start the car, but it will only turn over.

When set to `true`, the engine is forced off instantly if it was running. A moving vehicle will coast, brakes and steering still respond.

Toggling this to `false` will not restart the engine, the driver or a call to [SET_VEHICLE_ENGINE_ON](#_0x2497C4717C8B881E) has to start it again.

The state is local to each client and is not synced via the network. Every client that has the vehicle in scope needs to apply it.

Persists across damage and repair ([SET_VEHICLE_FIXED](#_0x115722B1B9C14C1C) does not clear it). If you set it, you clear it.

Pair with [SET_VEHICLE_DOORS_LOCKED](#_0xB664292EAECF7FA6) to keep peds out entirely.

Bicycles accept the flag but have no engine to shut off, so the call has no meaningful effect on them.

## Parameters
* **vehicle**: The vehicle to modify.
* **toggle**: `true` to mark the vehicle as undriveable and immediately shut the engine off, `false` allows the vehicle to be driven again.

## Examples

```lua
-- /lockengine toggles the undriveable flag on the player's current vehicle
local locked = false
RegisterCommand("lockengine", function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle == 0 then return end
    locked = not locked
    SetVehicleUndriveable(vehicle, locked)
end, false)
```

```js
// /lockengine toggles the undriveable flag on the player's current vehicle
let locked = false;
RegisterCommand("lockengine", () => {
    const ped = PlayerPedId();
    const vehicle = GetVehiclePedIsIn(ped, false);
    if (vehicle === 0) return;
    locked = !locked;
    SetVehicleUndriveable(vehicle, locked);
}, false);
```

```cs
using static CitizenFX.Core.Native.API;

// /lockengine toggles the undriveable flag on the player's current vehicle
private bool locked = false;

RegisterCommand("lockengine", new Action<int, List<object>, string>((source, args, raw) =>
{
    int ped = PlayerPedId();
    int vehicle = GetVehiclePedIsIn(ped, false);
    if (vehicle == 0) return;
    locked = !locked;
    SetVehicleUndriveable(vehicle, locked);
}), false);
```
