---
ns: GRAPHICS
---
## DELETE_CHECKPOINT

```c
// 0xF5ED37F54CD4D52E 0xB66CF3CA
void DELETE_CHECKPOINT(int checkpoint);
```
[Animations list](https://raw.githubusercontent.com/DurtyFree/gta-v-data-dumps/master/animDictsCompact.json)

## Parameters
* **checkpoint**: The hande of the checkpoint to delete.

## Return value
False when checkpoint got deleted or failed. Why false and not true? Mistery.

## Examples
```lua
local checkpointHandle = CreateCheckpoint(12, 1111.1111, 222.222, 33.33, 2222.2222, 333.333, 44.44, 5.0, 255, 0, 0, 200, 0)
DeleteCheckpoint(checkpointHandle)
```

