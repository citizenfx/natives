---
ns: HUD
aliases: ["0x788E7FD431BD67F1"]
---
## SET_FLOATING_HELP_TEXT_STYLE

```c
// 0x788E7FD431BD67F1 0x97852A82
void SET_FLOATING_HELP_TEXT_STYLE(int hudIndex, bool currentStyle, int hudColorIndex, int hudColorAlpha, int arrowPosition, int boxOffset);
```
Sets the text style for a floating help text message box. **Avoid** using GTA Input Format like ```~INPUT_CONTEXT~``` because it will glitch if you are not facing the message. The button image will still display beside the "Info" icon.

## Parameters
* **hudIndex**: Hud index for the help text. `0` uses `FLOATING_HELP_TEXT_1` hud component, `1` uses `FLOATING_HELP_TEXT_2` hud component. See [`SHOW_HUD_COMPONENT_THIS_FRAME`](#_0x0B4DF1FA60C0E664) for index information.
* **currentStyle**: Whether or not to show a small arrow below the help text message box.
* **hudColorIndex**: Background color for the message box and arrow(if enabled). See (HUD colors)[https://docs.fivem.net/docs/game-references/hud-colors/] for more info.
* **hudColorAlpha**: Changes the alpha value fot the scaleform. Does not seem to have effect.
* **arrowPosition**: Arrow position for the message box. `0`: No arrow. `1`: Arrow on top. `2`: Arrow on left. `3`: Arrow on bottom. `4`: Arrow on right. `5 or higher`: Arrow on top left.
* **boxOffset**: Set to 0 or any other integers does not seem to have effects.

## Examples
```lua
-- This function uses FLOATING_HELP_TEXT_1 hud component and draws a floating help text on the passed position.
function ShowFloatingHelpText(content, coords)
    AddTextEntry('FloatingHelpText', content)
    SetFloatingHelpTextWorldPosition(0, coords)
    SetFloatingHelpTextStyle(0, true, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp('FloatingHelpText')
    EndTextCommandDisplayHelp(1, false, false, -1)
end
```
