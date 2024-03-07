---
ns: HUD
aliases: ["0x2DE6C5E2E996F178"]
---
## PAUSE_TOGGLE_FULLSCREEN_MAP

```c
// 0x2DE6C5E2E996F178
void PAUSE_TOGGLE_FULLSCREEN_MAP(cs_type(Any) BOOL enabled);
```

Toggles pause menu map rendering. Please note that this native is EXTREMELY buggy so you have to be very careful while using it, since it can easily cause crashes if you're using this while the menu content is being navigated.

## Parameters
* **enabled**: 

