---
ns: HUD
aliases: ["0x788E7FD431BD67F1"]
---
## SET_FLOATING_HELP_TEXT_STYLE

```c
// 0x788E7FD431BD67F1 0x97852A82
void SET_FLOATING_HELP_TEXT_STYLE(int hudIndex, int style, int hudColor, int alpha, int arrowPosition, int boxOffset);
```

### Arrow Positions
* 0 = Off / No arrow
* 1 = Top
* 2 = Left
* 3 = Bottom
* 4 = Right

### Note
Any numeric value greater than 4 will result in a right arrow (Index 4)

### Important
Needs to be called every frame

![Preview of the provided example code](https://forum.cfx.re/uploads/default/original/4X/7/f/3/7f319bc93c3a00b8829bd4ac8dddc235fbf3a9ef.png)

## Parameters
* **hudIndex**: The hud index for the floating help message
* **style**: Value 0 won't show an arrow at all. Values 1, 2 and -2 will display an arrow.
* **hudColor**: https://docs.fivem.net/docs/game-references/hud-colors/
* **alpha**: Value for the help box opacity, from 0-255. Anything greater will simply ignore the alpha value. Always 191 in R* scripts.
* **arrowPosition**: Used to set the arrow positon. No value will hide the arrow
* **boxOffset**: Offset for the floating help box. Note: Arrow stays fixed

## Examples
```lua
function DisplayHelpText(string)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(string)
    EndTextCommandDisplayHelp(1, false, false, 0)
end

CreateThread(function()
    while true do
        Wait(0)

        local Ped = PlayerPedId()

        DisplayHelpText('Example Text')
        SetFloatingHelpTextStyle(0, 2, 2, 0, 3, 0)
        SetFloatingHelpTextToEntity(0, Ped, 0, 0)
    end
end)
```

```js
function DisplayHelpText(string) {
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(string)
    EndTextCommandDisplayHelp(1, false, false, 0)
}

setTick(() => {
    const Ped = PlayerPedId()

    DisplayHelpText('Example Text')
    SetFloatingHelpTextStyle(0, 2, 2, 0, 3, 0)
    SetFloatingHelpTextToEntity(0, Ped, 0, 0)
})
```
