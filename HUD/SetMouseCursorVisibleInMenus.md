---
ns: HUD
aliases: ["0x98215325A695E78A"]
---
## _SET_MOUSE_CURSOR_VISIBLE_IN_MENUS

```c
// 0x98215325A695E78A
void _SET_MOUSE_CURSOR_VISIBLE_IN_MENUS(BOOL enable);
```

Shows/hides the frontend cursor on the pause menu or similar menus.
Clicking off and then on the game window will show it again.

## Parameters
* **enable**: Set to false to disable the cursor, true to enable it.

## Examples
```lua
Citizen.CreateThread(function()
    local menuType = "FE_MENU_VERSION_CORONA_LOBBY"
    ActivateFrontendMenu(GetHashKey(menuType), false, -1)
    --100 works as well
    Citizen.Wait(1000)
    --Hide frontend cursor
    N_0x98215325a695e78a(false)
end)
```
