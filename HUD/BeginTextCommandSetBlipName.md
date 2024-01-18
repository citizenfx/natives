---
ns: HUD
---
## BEGIN_TEXT_COMMAND_SET_BLIP_NAME

```c
// 0xF9113A30DE5C6670 0xF4C211F6
void BEGIN_TEXT_COMMAND_SET_BLIP_NAME(char* textLabel);
```

Starts a text command to change the name of a blip displayed in the pause menu.

This should be paired with [`END_TEXT_COMMAND_SET_BLIP_NAME`](#_0xBC38B49BCB83BC9B), once adding all required text components.

## Parameters
* **textLabel**: The text label to set.

## Examples
```lua
-- creates a blip called 'Food for me!' at 0.0, 0.0, 0.0
AddTextEntry('MYBLIP', 'Food for ~a~!')

local blip = AddBlipForCoord(0.0, 0.0, 0.0)
BeginTextCommandSetBlipName('MYBLIP')
AddTextComponentSubstringPlayerName('me')
EndTextCommandSetBlipName(blip)
```
