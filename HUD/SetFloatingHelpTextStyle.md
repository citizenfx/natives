---
ns: HUD
aliases: ["0x788E7FD431BD67F1"]
---
## SET_FLOATING_HELP_TEXT_STYLE

```c
// 0x788E7FD431BD67F1 0x97852A82
void SET_FLOATING_HELP_TEXT_STYLE(int hudIndex, int style, int hudColor, int p3, int arrowPosition, int boxOffset);
```

## Parameters
* **hudIndex**: 
* **style**: 0: No arrow at all. 1, 2 and -2 are all the same and displaying a arrow (if specified)
* **hudColor**: https://docs.fivem.net/docs/game-references/hud-colors/
* **p3**: No use case. Always 191 in R* scripts
* **arrowPosition**: Used to set the arrow positon. Default is off
* **boxOffset**: Offset for the floating help box. Important: Arrow stays fixed on its position

## Arrow Positions
0 = OFF  
1 = TOP  
2 = LEFT  
3 = BOTTOM  
4 = RIGHT  

Note: anything above 4 will result in a right arrow

## Important
Needs to be called every frame

## Example
```lua
function DisplayHelpText(string)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(string)
    EndTextCommandDisplayHelp(1, 0, 0, 0)
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
![](https://derdevhd.live/media/example.png)
