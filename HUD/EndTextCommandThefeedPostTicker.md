---
ns: HUD
aliases: ["_DRAW_NOTIFICATION"]
---
## END_TEXT_COMMAND_THEFEED_POST_TICKER

```c
// 0x2ED7843F8F801023 0x08F7AF78
int END_TEXT_COMMAND_THEFEED_POST_TICKER(BOOL isImportant, BOOL bHasTokens);
```

Example output preview:


![Image](https://r2.fivemanage.com/qFztShHCe1bhCDvTI4vxv/image_2024-08-24_105638029.png)


## Examples
```lua
BeginTextCommandThefeedPost("STRING")
AddTextComponentSubstringPlayerName("Hello " .. GetPlayerName(PlayerId()) .. ".")
EndTextCommandThefeedPostTicker(true, true)
```

## Parameters
* **isImportant**: Makes the notification flash on the screen.
* **bHasTokens**: Makes the notification appear in the "Pause Menu > Info/Brief > Notifications" section.

## Return value
The notification handle.
