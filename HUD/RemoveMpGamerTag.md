---
ns: HUD
aliases: ["0x31698AA80E0223F8"]
---
## REMOVE_MP_GAMER_TAG

```c
// 0x31698AA80E0223F8 0x3D081FE4
void REMOVE_MP_GAMER_TAG(int gamerTagId);
```

Removes the gamer tag associated with the provided ID. This does not happen instantly. Use [IS_MP_GAMER_TAG_FREE](#_0x595B5178E412E199) to determine when the ID is free for reuse.

## Parameters
* **gamerTagId**: A player ID with a gamer tag or a fake gamer tag ID.

