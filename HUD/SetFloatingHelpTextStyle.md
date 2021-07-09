---
ns: HUD
aliases: ["0x788E7FD431BD67F1"]
---
## SET_FLOATING_HELP_TEXT_STYLE

```c
// 0x788E7FD431BD67F1 0x97852A82
void SET_FLOATING_HELP_TEXT_STYLE(Any p0, Any p1, hudColorIndex --[[ integer ]], Any p3, placement --[[ integer ]], Any p5);
```

```
hudColorIndex pastebin.com/d9aHPbXN  
placement 1 = bottom, 2 = right, 3 = top, 4 = left

Example
AddTextEntry('FloatingHelpNotification', 'Test')
SetFloatingHelpTextWorldPosition(1, coords)
SetFloatingHelpTextStyle(1, 1, 211, -1, 3, -1)
BeginTextCommandDisplayHelp('FloatingHelpNotification')
EndTextCommandDisplayHelp(2, 0, 1, -1)
```
