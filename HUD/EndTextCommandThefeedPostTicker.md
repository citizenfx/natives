---
ns: HUD
aliases: ["_DRAW_NOTIFICATION"]
---
## END_TEXT_COMMAND_THEFEED_POST_TICKER

```c
// 0x2ED7843F8F801023 0x08F7AF78
int END_TEXT_COMMAND_THEFEED_POST_TICKER(BOOL isImportant, BOOL showInBrief);
```

Posts a generic feed notification:

![](https://i.ibb.co/GkHcFvf/image.png)

## Parameters
* **isImportant**: Makes the notification flash on the screen.
* **showInBrief**: Makes the notification appear in the "Pause Menu > Info/Brief > Notifications" section.

## Return value
The notification handle.

## Examples
```lua
AddTextEntry("MyFeedMessage", "Hello " .. GetPlayerName(PlayerId()) .. ".")
BeginTextCommandThefeedPost("MyFeedMessage")
EndTextCommandThefeedPostTicker(true, true)
```
