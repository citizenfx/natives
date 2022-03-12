---
ns: HUD
---
## REMOVE_BLIP

```c
// 0x86A652570E5F25DD 0xD8C3C1CD
void REMOVE_BLIP(Blip* blip);
```

Removes the blip from your map.

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
