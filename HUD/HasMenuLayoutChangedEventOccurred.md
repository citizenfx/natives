---
ns: HUD
aliases: ["0x2E22FEFA0100275E"]
---
## HAS_MENU_LAYOUT_CHANGED_EVENT_OCCURRED

```c
// 0x2E22FEFA0100275E 0x96863460
BOOL HAS_MENU_LAYOUT_CHANGED_EVENT_OCCURRED();
```

Make sure to use [`GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS`](#_0x7E17BE53E1AAABAF) when this function returns true in a frame.

## Return value
Returns true every frame when a layout change event is active. Do note you can only check this with one script at a time.
Layout change events become active whenever the player navigates the menu up or down.
