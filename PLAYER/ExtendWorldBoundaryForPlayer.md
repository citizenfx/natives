---
ns: PLAYER
aliases: ["0x5006D96C995A5827","_EXPAND_WORLD_LIMITS"]
---
## EXTEND_WORLD_BOUNDARY_FOR_PLAYER

```c
// 0x5006D96C995A5827 0x64DDB07D
void EXTEND_WORLD_BOUNDARY_FOR_PLAYER(float x, float y, float z);
```

```
Appears only 3 times in the scripts, more specifically in michael1.ysc
-
Expands the playable world boundary for the player to prevent dying and can be used to prevent a vehicle's engine from automatically being killed if they go "out of the world."

Call frequency: This native does not need to be called in a loop.
```

## Parameters

* **x**: The X coordinate of the new world boundary.
* **y**: The Y coordinate of the new world boundary.
* **z**: The Z coordinate (height) of the new world boundary.
