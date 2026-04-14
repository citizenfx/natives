---
ns: VEHICLE
---
## SET_VEHICLE_UNDRIVEABLE

```c
// 0x8ABA6AF54B942B95 0x48D02A4E
void SET_VEHICLE_UNDRIVEABLE(Vehicle vehicle, BOOL toggle);
```

Marks a vehicle as undriveable. While this is set, the engine cannot be started, whether the ignition attempt comes from the player, an AI driver, or the auto-start that normally fires when a ped finishes entering a vehicle. Peds can still open the door, sit in the driver seat and close the door, they just can't get it moving.

When toggled on, the engine is also switched off immediately if it was running. The cut is instant with no animation, so a moving vehicle will coast until friction stops it. Brakes and steering still respond. If you need a graceful stop, bring the vehicle to a halt before calling this. Audio reflects the state too, the ignition hold stretches so a driver cranks the starter for longer without the engine catching.

Toggling it back off only clears the restriction, it does not restart the engine. The driver, or a call to [SET_VEHICLE_ENGINE_ON](#_0x2497C4717C8B881E), has to start it again. Calling [SET_VEHICLE_ENGINE_ON](#_0x2497C4717C8B881E) with the engine-on argument while this flag is still set is a no-op, and in non-shipping builds it fires a script assert.

### Behavior and caveats

The state is local to each client and is not network synced. In multiplayer, every client that has the vehicle in scope needs to apply it, and it has to be re-applied when ownership migrates.

It persists across most vehicle events. Damage, repair (including [SET_VEHICLE_FIXED](#_0x115722B1B9C14C1C)), ownership transfer and mission cleanup do not clear it. If you set it, you are on the hook for clearing it, otherwise the vehicle will stay dead for any later script that picks it up.

AI drivers will still try. They can walk up, enter and attempt to start the vehicle once, fail, and then sit inside. Pair it with [SET_VEHICLE_DOORS_LOCKED](#_0xB664292EAECF7FA6) if you want to keep peds out entirely.

[IS_VEHICLE_DRIVEABLE](#_0x4C241E39B23DF959) does not observe this flag. It only reports damage and fire based drivability, so a vehicle marked undriveable through this native will still come back as drivable from that query as long as it is not wrecked or on fire. Track the undriveable state yourself if your logic depends on it.

Damage-based undriveability is independent. A vehicle with a destroyed engine or no fuel is already undriveable through a separate path, and clearing this flag won't override that.

Bicycles accept the flag but have no engine to shut off, so the call has no meaningful effect on them.

You don't need to call this every tick. Setting it once when the vehicle spawns, when a ped enters it, or when it streams in is enough, the flag sticks until you clear it.

## Parameters
* **vehicle**: The vehicle to modify.
* **toggle**: `true` to mark the vehicle as undriveable and immediately shut the engine off, `false` to clear the restriction (does not restart the engine).

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
