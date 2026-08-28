---
ns: HUD
aliases: ["0xF284AC67940C6812"]
---
## HAS_MENU_TRIGGER_EVENT_OCCURRED

```c
// 0xF284AC67940C6812 0x7D95AFFF
cs_type(Any) BOOL HAS_MENU_TRIGGER_EVENT_OCCURRED();
```

Make sure to use [`GET_MENU_TRIGGER_EVENT_DETAILS`](#_0x36C1451A88A09630) when this returns true to get information and details about the event.

## Return value
Returns if a pause menu "trigger" event is active this frame. Can only be used by one script at a time.
"Trigger" events are mostly activated when you focus on a menu, or change columns.
