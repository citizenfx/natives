---
ns: GRAPHICS
aliases: ["0xF5A2C681787E579D", "_SCREEN_DRAW_POSITION_RATIO"]
---
## SET_SCRIPT_GFX_ALIGN_PARAMS

```c
// 0xF5A2C681787E579D 0x76C641E4
void SET_SCRIPT_GFX_ALIGN_PARAMS(float x, float y, float w, float h);
```

Sets the draw offset/calculated size for `SET_SCRIPT_GFX_ALIGN`. If using any alignment other than left/top, the game
expects the width/height to be configured using this native in order to get a proper starting position for the draw
command.


## Parameters
* **x**: The X offset for the item to be drawn.
* **y**: The Y offset for the item to be drawn.
* **w**: The width of the item to be drawn.
* **h**: The height of the item to be drawn.

