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
Note: This should be checked every frame and when it returns true, you need to check [GET_MENU_TRIGGER_EVENT_DETAILS](#_0x36C1451A88A09630).