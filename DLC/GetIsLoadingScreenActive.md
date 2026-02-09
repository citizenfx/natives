---
ns: DLC
---
## GET_IS_LOADING_SCREEN_ACTIVE

```c
// 0x10D0A8F259E93EC9 0x517B601B
BOOL GET_IS_LOADING_SCREEN_ACTIVE();
```

When loading in, returns true until [`SHUTDOWN_LOADING_SCREEN`](#_0x078EBE9809CCD637) was called. Note that this is referring to the game's loading screen, not the NUI loadingscreen and is therefore not impacted by [loadscreen_manual_shutdown](https://docs.fivem.net/docs/scripting-reference/resource-manifest/resource-manifest/#loadscreen_manual_shutdown).

## Return value

Wether the player is still in the loadingscreen

## Examples
```lua
-- Close the loading screen if it's still active
if GetIsLoadingScreenActive() then
    ShutdownLoadingScreen()
end
```
