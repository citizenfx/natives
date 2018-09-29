---
ns: HUD
aliases: ["0x92F0DA1E27DB96DC"]
---
## _SET_NOTIFICATION_BACKGROUND_COLOR

```c
// 0x92F0DA1E27DB96DC
void _SET_NOTIFICATION_BACKGROUND_COLOR(int hudIndex);
```

```
From the decompiled scripts:  
UI::_92F0DA1E27DB96DC(6);  
UI::_92F0DA1E27DB96DC(184);  
UI::_92F0DA1E27DB96DC(190);  
sets background color for the next notification  
6 = red  
184 = green  
190 = yellow  
Here is a list of some colors that can be used: gyazo.com/68bd384455fceb0a85a8729e48216e15  
this seems to set the alpha to 255 automatically, if you have a work around let me know  
```

## Parameters
* **hudIndex**: 

