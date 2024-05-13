---
ns: HUD
aliases: ["0xF284AC67940C6812"]
---
## HAS_MENU_TRIGGER_EVENT_OCCURRED

```c
// 0xF284AC67940C6812 0x7D95AFFF
cs_type(Any) BOOL HAS_MENU_TRIGGER_EVENT_OCCURRED();
```

**NOTE:** This can only be used by one script at a time.

## Return value
Returns if a Pause Menu trigger event occurred this frame. Trigger events mostly happen when an item is selected with either enter or mouse click in the pause menu.
See [`GET_MENU_TRIGGER_EVENT_DETAILS`](#_0x36C1451A88A09630) to see which menu and which menu item this event occurred on.