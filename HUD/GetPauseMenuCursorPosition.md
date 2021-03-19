---
ns: HUD
aliases: ['0x5BFF36D6ED83E0AE']
apiset: client
---
## _GET_PAUSE_MENU_CURSOR_POSITION

```c
// 0x5BFF36D6ED83E0AE
Vector3 _GET_PAUSE_MENU_CURSOR_POSITION();
```

```
GET_PAUSE_MENU_*
```

## Return value
If the pause menu is open, it will return a Vector3, Z is always 0.
If the pause menu is closed, it will return Vector3.Zero
