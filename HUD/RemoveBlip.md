---
ns: HUD
---
## REMOVE_BLIP

```c
// 0x86A652570E5F25DD 0xD8C3C1CD
void REMOVE_BLIP(Blip* blip);
```

Removes the blip from your map.

**Note:** This function only works on the script that created the blip, if you wish to remove blips created by other scripts, see [`SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT`](#_0x86A652570E5F25DD).

## Parameters
* **blip**: Blip handle to remove.

## Examples
```lua
-- Create the blip
local coords = vector3(200.0, 200.0, 5.0)
local blip = AddBlipForCoord(coords)

-- When you want to remove it
RemoveBlip(blip)
```
