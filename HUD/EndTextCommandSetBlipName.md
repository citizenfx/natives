---
ns: HUD
---
## END_TEXT_COMMAND_SET_BLIP_NAME

```c
// 0xBC38B49BCB83BC9B 0xE8E59820
void END_TEXT_COMMAND_SET_BLIP_NAME(Blip blip);
```

Finalizes a text command started with [`BEGIN_TEXT_COMMAND_SET_BLIP_NAME`](#_0xF9113A30DE5C6670), setting the name
of the specified blip.

## Parameters
* **blip**: The blip to change the name for.

## Examples
```lua
-- creates a blip called 'Food for me!' at 0.0, 0.0, 0.0
AddTextEntry('MYBLIP', 'Food for ~a~!')

local blip = AddBlipForCoords(0.0, 0.0, 0.0)
BeginTextCommandSetBlipName('MYBLIP')
AddTextComponentSubstringPlayerName('me')
EndTextCommandSetBlipName(blip)
```