---
ns: HUD
aliases: ["_DRAW_NOTIFICATION_3"]
---
## END_TEXT_COMMAND_THEFEED_POST_TICKER_WITH_TOKENS

```c
// 0x378E809BF61EC840 0x02BCAF9B
int END_TEXT_COMMAND_THEFEED_POST_TICKER_WITH_TOKENS(BOOL isImportant, BOOL showInBrief);
```

Posts an above minimap feed message with tokens support (blips, input keys, etc...)

## Parameters
* **isImportant**: Makes the notification flash.
* **showInBrief**: Shows in Pause Menu > Info > Notifications.

## Return value
Notification handle.
