---
ns: HUD
aliases: ["_DRAW_NOTIFICATION_2"]
---
## END_TEXT_COMMAND_THEFEED_POST_TICKER_FORCED

```c
// 0x44FA03975424A0EE 0x57B8D0D4
int END_TEXT_COMMAND_THEFEED_POST_TICKER_FORCED(BOOL isImportant, BOOL showInBrief);
```

Posts an above minimap feed notification that is forced (Previous messages will be cleared).

## Parameters
* **isImportant**: If true, the notification will flash.
* **showInBrief**: If true, shows in Pause Menu > Info > Notifications.

## Return value
The notification handle.
