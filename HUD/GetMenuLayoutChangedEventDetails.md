---
ns: HUD
aliases: ["0x7E17BE53E1AAABAF", "_GET_PAUSE_MENU_SELECTION_DATA"]
---
## GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS

```c
// 0x7E17BE53E1AAABAF 0x6025AA2F
void GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS(int* lastMenuId, int* nextMenuId, int* selectedItemUniqueId);
```

Returns details of menu layout changed event which occurred in the pause menu.
Also see [`HAS_MENU_LAYOUT_CHANGED_EVENT_OCCURRED`](#_0x2E22FEFA0100275E).

## Parameters
* **lastMenuId**: Last Menu screen ID (pausemenulut.as in pause_menu_sp_content.gfx files) of the event.
* **nextMenuId**: ID of the next menu screen.
* **selectedItemUniqueId**: Unique ID of the menu slot.

