---
ns: STREAMING
aliases: ["0xAAB3200ED59016BC", "_SWITCH_OUT_PLAYER"]
---
## SWITCH_TO_MULTI_FIRSTPART

```c
// 0xAAB3200ED59016BC 0xFB4D062D
void SWITCH_TO_MULTI_FIRSTPART(Ped ped, int flags, int switchType);
```

You can check if the player is in a Switch state with [`IS_PLAYER_SWITCH_IN_PROGRESS`](#_0xD9D2CFFF49FAB35F).

_**Note:** Doesn't act normally when used on Mount Chiliad._

## Parameters
* **ped**: The Ped (player character) for which the switch is initiated.
* **flags**: Flags control various functionalities: 0 for normal behavior, 1 for no transition, and 255 for Switch IN.
* **switchType**: Specifies the type of switch (0 - 3): 0 for 1 step towards ped, 1 for 3 steps out from ped, 2 for 1 step out from ped, and 3 for 1 step towards ped.

## Examples

```lua
-- Check if the player is in a Switch "state"
if not IsPlayerSwitchInProgress() then
    -- If the player is not already in a Switch state, initiate a Switch
    SwitchToMultiFirstPart(PlayerPedId(), 0, 1)
    -- In this case, switchType is set to 1, which means "3 steps out from ped"
end
```

```js
// Check if the player is in a Switch "state"
if (!IsPlayerSwitchInProgress()) {
    // If the player is not already in a Switch state, initiate a Switch
    SwitchToMultiFirstPart(PlayerPedId(), 0, 1);
    // In this case, switchType is set to 1, which means "3 steps out from ped" according to the documentation
}
```

```cs
using static CitizenFX.Core.Native.API;

// Check if the player is in a Switch "state"
if (!IsPlayerSwitchInProgress()) {
    // If the player is not already in a Switch state, initiate a Switch
    SwitchToMultiFirstPart(API.PlayerPedId(), 0, 1);
    // In this case, switchType is set to 1, which means "3 steps out from ped" according to the documentation
}
```
