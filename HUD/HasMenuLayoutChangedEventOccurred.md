---
ns: HUD
aliases: ["0x2E22FEFA0100275E"]
---
## HAS_MENU_LAYOUT_CHANGED_EVENT_OCCURRED

```c
// 0x2E22FEFA0100275E 0x96863460
BOOL HAS_MENU_LAYOUT_CHANGED_EVENT_OCCURRED();
```

**NOTE:** This can only be used by one script at a time.

## Return value
Returns if a Pause Menu layout changed event has occurred this frame. Layout changed events mostly occur when you navigate the menu up or down, or similar.
Use [`GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS`](#_0x7E17BE53E1AAABAF) to see which menu and which menu item this event occurred on.