---
ns: MISC
aliases: ["0xF36199225D6D8C86", "_SET_CLOUD_HAT_OPACITY"]
---
## SET_CLOUDS_ALPHA

```c
// 0xF36199225D6D8C86
void SET_CLOUDS_ALPHA(float opacity);
```

Allows modification of the cloud opacity. It can also be used in other contexts, such as when the player is in a switch state [`IS_PLAYER_SWITCH_IN_PROGRESS`](#_0xD9D2CFFF49FAB35F).


## Parameters
* **opacity**: The opacity value to set for clouds.


## Examples
```lua
-- Check if the player is in a Switch "state"
if IsPlayerSwitchInProgress() then
    -- If the player is in a Switch state, set the clouds opacity to 1.0
    SetCloudsAlpha(1.0)
end
```

```js
// Check if the player is in a Switch "state"
if (IsPlayerSwitchInProgress()) {
    // If the player is in a Switch state, set the clouds opacity to 1.0
    SetCloudsAlpha(1.0);
}
```

```cs
using static CitizenFX.Core.Native.API;
// Check if the player is in a Switch "state"
if (IsPlayerSwitchInProgress()) {
    // If the player is in a Switch state, set the clouds opacity to 1.0
    SetCloudsAlpha(1f);
}
```
