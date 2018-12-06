---
ns: HUD
---
## SET_BLIP_DISPLAY

```c
// 0x9029B2F3DA924928 0x2B521F91
void SET_BLIP_DISPLAY(Blip blip, int displayId);
```

**displayId Behaviour** <br>
0 = Doesn't show up, ever, anywhere. <br>
1 = Doesn't show up, ever, anywhere. <br>
2 = Shows on both main map and minimap. (Selectable on map) <br>
3 = Shows on main map only. (Selectable on map) <br>
4 = Shows on main map only. (Selectable on map) <br>
5 = Shows on minimap only. <br>
6 = Shows on both main map and minimap. (Selectable on map) <br>
7 = Doesn't show up, ever, anywhere. <br>
8 = Shows on both main map and minimap. (Not selectable on map) <br>
9 = Shows on minimap only. <br>
10 = Shows on both main map and minimap. (Not selectable on map) <br>
Anything higher than 10 seems to be exactly the same as 10. <br>
<br>
Rockstar seem to only use 0, 2, 3, 4, 5 and 8 in the decompiled scripts.

## Parameters
* **blip**: 
* **displayId**: 

