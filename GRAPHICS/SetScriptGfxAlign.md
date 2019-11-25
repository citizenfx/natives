---
ns: GRAPHICS
aliases: ["_SET_SCREEN_DRAW_POSITION", "_SCREEN_DRAW_POSITION_BEGIN"]
---
## SET_SCRIPT_GFX_ALIGN

```c
// 0xB8A850F20A067EB6 0x228A2598
void SET_SCRIPT_GFX_ALIGN(int horizontalAlign, int verticalAlign);
```

This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
independent of the player's safe zone configuration.

These values are equivalent to `alignX` and `alignY` in `common:/data/ui/frontend.xml`, which can be used as a baseline
for default alignment.
  
Valid values for `horizontalAlign`, from original documentation:
* **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
  the right side of the screen.
* **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
  centered.
* **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
  from the right side of the screen, both move with the right side of the screen.
  
Valid values for `verticalAlign`, from original documentation:
* **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
  rather centered.
* **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
  different from 66.
* **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.

Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
canonical value for this is 'I' (73).

For example, you can use `SET_SCRIPT_GFX_ALIGN(0, 84)` to only scale on the Y axis (to the top), but not change the X
axis.

To reset the value, use `RESET_SCRIPT_GFX_ALIGN`.

## Parameters
* **horizontalAlign**: The horizontal alignment. This can be 67 ('C'), 76 ('L'), or 82 ('R').
* **verticalAlign**: The vertical alignment. This can be 67 ('C'), 66 ('B'), or 84 ('T').

## Examples
```lua
-- align the next draw to the top left
SetScriptGfxAlign(string.byte('L'), string.byte('T'))

-- prints "THIS LABEL NEEDS TO BE HERE !!!"
BeginTextCommandDisplayText('DUMMY1')
EndTextCommandDisplayText(0.0, 0.0)

-- reset the script draw alignment
ResetScriptGfxAlign()
```

