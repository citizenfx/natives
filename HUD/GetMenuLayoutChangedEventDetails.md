---
ns: HUD
aliases: ["0x7E17BE53E1AAABAF", "_GET_PAUSE_MENU_SELECTION_DATA"]
---
## GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS

```c
// 0x7E17BE53E1AAABAF 0x6025AA2F
void GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS(int* previousScreen, int* currentScreen, int* uniqueId);
```

Returns details of a layout changed event.
Be sure this is called only when [`HAS_MENU_LAYOUT_CHANGED_EVENT_OCCURRED`](#_0x2E22FEFA0100275E) returns true in a frame.
Can only be called by one script at a time.
Layout changed events become active whenever the menu is navigated up or down.

## Parameters
* **previousScreen**: Screen id of the last selected item minus 1000. See [`PAUSE_MENUCEPTION_GO_DEEPER`](#_0x77F16B447824DA6C) for a list of screens.
* **currentScreen**: Current menu it's screen id. 
* **uniqueId**: Unique ID of the menu item.

