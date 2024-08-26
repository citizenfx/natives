---
ns: HUD
aliases: ["_DRAW_NOTIFICATION_4"]
---
## END_TEXT_COMMAND_THEFEED_POST_MPTICKER

```c
// 0xF020C96915705B3A 0x8E319AB8
int END_TEXT_COMMAND_THEFEED_POST_MPTICKER(BOOL isImportant, BOOL showInBrief);
```

Exactly the same as [`END_TEXT_COMMAND_THEFEED_POST_TICKER`](#_0x2ED7843F8F801023).

## Parameters
* **isImportant**: If true, the notification will flash. 
* **showInBrief**: If true, the message will be shown in Pause Menu > Info > Notifications.

## Return value
The notification handle.
