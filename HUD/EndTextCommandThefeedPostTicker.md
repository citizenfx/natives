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


![](https://i.imgur.com/TJvqkYq.png)


## Parameters
* **isImportant**: Makes the notification flash on the screen.
* **bHasTokens**: Makes the notification appear in the "Pause Menu > Info/Brief > Notifications" section.

## Return value
The notification handle.

## Examples
```lua
BeginTextCommandThefeedPost("STRING")
AddTextComponentSubstringPlayerName("Hello " .. GetPlayerName(PlayerId()) .. ".")
EndTextCommandThefeedPostTicker(true, true)
```
