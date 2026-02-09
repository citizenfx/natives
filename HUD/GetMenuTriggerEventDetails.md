---
ns: HUD
aliases: ["_GET_PAUSE_MENU_SELECTION", "0x36C1451A88A09630"]
---
## GET_MENU_TRIGGER_EVENT_DETAILS

```c
// 0x36C1451A88A09630 0x8543AAC8
void GET_MENU_TRIGGER_EVENT_DETAILS(cs_type(AnyPtr) int* screenId, cs_type(AnyPtr) int* selectedItemUniqueId);
```

Make sure that only one script uses this function, and once [`HAS_MENU_TRIGGER_EVENT_OCCURRED`](#_0xF284AC67940C6812) returns true in a frame.

## Parameters
* **screenId**: Screen ID of where this event occurred. See [`PAUSE_MENUCEPTION_GO_DEEPER`](#_0x77F16B447824DA6C) for a full list.
* **selectedItemUniqueId**: Menu item unique ID of where this event occurred.

