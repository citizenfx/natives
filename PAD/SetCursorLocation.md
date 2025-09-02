---
ns: PAD
aliases: ["0xFC695459D4D0E219"]
---
## _SET_CURSOR_LOCATION

```c
// 0xFC695459D4D0E219
BOOL _SET_CURSOR_LOCATION(float x, float y);
```
## Description
Sets the position of the mouse cursor within the current UI context (e.g., NUI menu or pause menu).  
Coordinates must be in the range 0.0 to 1.0, where (0.5, 0.5) represents the center of the screen.

## Parameters
* **x**: Horizontal position (0.0 = left, 1.0 = right)
* **y**: Vertical position (0.0 = top, 1.0 = bottom)

## Return value
Returns `true` if the cursor position was successfully set, otherwise `false`.

