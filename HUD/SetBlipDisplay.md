---
ns: HUD
---
## SET_BLIP_DISPLAY

```c
// 0x9029B2F3DA924928 0x2B521F91
void SET_BLIP_DISPLAY(Blip blip, int displayId);
```

```
displayId = 2 : Shows on Main map and Radar, selectable
displayId = 3 : Shows on Main map but not Radar (not selectable on map)  
displayId = 5 : Shows on Radar but not Main map
displayId = 8 : shows on Main map and Radar, not selectable

```

## Parameters
* **blip**: 
* **displayId**: 

