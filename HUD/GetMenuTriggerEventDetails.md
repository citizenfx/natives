---
ns: HUD
aliases: ["0x36C1451A88A09630", "_GET_PAUSE_MENU_SELECTION"]
---
## GET_MENU_TRIGGER_EVENT_DETAILS 

```c
// 0x36C1451A88A09630 0x8543AAC8
void GET_MENU_TRIGGER_EVENT_DETAILS (cs_type(AnyPtr) int* menuId, cs_type(AnyPtr) int* selectedItemUniqueId);
```

Returns details of the current Pause Menu trigger event.
Also see [`HAS_MENU_TRIGGER_EVENT_OCCURRED`](#_0xF284AC67940C6812)

## Parameters
* **menuId**: Menu ID (PauseMenuLUT.as pause_menu_sp_content.gfx files) of where the trigger event occurred.
* **selectedItemUniqueId**: Slot unique ID of which triggered the event.

