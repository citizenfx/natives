---
ns: GRAPHICS
aliases: ["0x4B5B4DA5D79F1943", "_SET_CHECKPOINT_SCALE"]
---
## _SET_CHECKPOINT_ICON_HEIGHT

```c
// 0x4B5B4DA5D79F1943 0x80151CCF
void _SET_CHECKPOINT_ICON_HEIGHT(int checkpoint, float height_multiplier);
```

This multiplies the height of the icon inside a checkpoint with the default height of about 2 units above the checkpoint's coordinates.

## Parameters
* **checkpoint**: The checkpoint the multiplier should be applied to.
* **height_multiplier**: The multiplier for the icon height above the checkpoint's coordinates. Default is 1.0

## Examples
```lua
local checkpoint = CreateCheckpoint(...)
SetCheckpointIconHeight(checkpoint, 2.0) -- places the icon two times as high as the default.
```
