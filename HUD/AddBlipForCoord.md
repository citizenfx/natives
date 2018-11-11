---
ns: HUD
---
## ADD_BLIP_FOR_COORD

```c
// 0x5A039BB0BCA604B6 0xC6F43D0E
Blip ADD_BLIP_FOR_COORD(float x, float y, float z);
```

Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.

## Parameters
* **x**: The X coordinate to create the blip on.
* **y**: The Y coordinate.
* **z**: The Z coordinate.

## Return value
A blip handle.

## Examples
```lua
local destination = AddBlipForCoord(200.0, 200.0, 5.0)
```