---
ns: GRAPHICS
aliases: ["_SET_SCREEN_DRAW_POSITION"]
---
## _SCREEN_DRAW_POSITION_BEGIN

```c
// 0xB8A850F20A067EB6 0x228A2598
void _SCREEN_DRAW_POSITION_BEGIN(int horizontal, int vertical);
```

```
This function anchors all drawn objects to a side of the safe zone. This needs to be called to make the interface invulnerable to changes in safezone size among different users.  
  
The horizontalAnchor can be called with values:  
67 - Right: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with the right side of the screen  
76 - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when centered  
82 - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away from the right side of the screen, both move with the right side of the screen  
  
The verticalAnchor can be called with values:  
66 - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about rather centered  
67 - Bottom: It starts at a certain distance from the bottom, but the distance is fixed, the distance is different from 66.  
84 - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it  
  
Calling it with any other values, is as good as not calling it at all, which can be selectively done. e.g. _SCREEN_DRAW_POSITION_BEGIN(0,84) makes all draw commands scale with the top screen, but with neither sides. This is exetremely useful for aligning something with the top-center.  
edit:  
this is to make drawn text, scaleforms and sprites be isolated from the "main screen" used when you change the RenderTarget id so you to draw on phone do this before you "draw" things and then do "SCREEN_DRAW_POSITION_END()"  
```

## Parameters
* **horizontal**: 
* **vertical**: 

