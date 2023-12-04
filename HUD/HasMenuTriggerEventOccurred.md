---
ns: HUD
aliases: ["0xF284AC67940C6812"]
---
## HAS_MENU_TRIGGER_EVENT_OCCURRED

```c
// 0xF284AC67940C6812 0x7D95AFFF
cs_type(Any) BOOL HAS_MENU_TRIGGER_EVENT_OCCURRED();
```

## Return value
Returns true if a pause menu Trigger Event has occured this frame.
Trigger event becomes active whenever currently highlighted menu item in pause menu is either clicked on by the cursor or enter (control 201) is pressed.
Note: This can only be used by one script at a time.