---
ns: PATHFIND
aliases: ["_SET_AI_GLOBAL_PATH_NODES_TYPE"]
---
## SET_ALLOW_STREAM_HEIST_ISLAND_NODES

```c
// 0xF74B1FFA4A15FBEA
void SET_ALLOW_STREAM_HEIST_ISLAND_NODES(cs_type(int) BOOL bAllow);
```

Toggles the streaming of Heist Island (Cayo Perico) road nodes. When enabled `true`, GPS navigation on the island is available. Disabling `false` these nodes, particularly when near the island, might lead to game instability. Use with caution, ensuring to re-enable main level and prologue nodes by setting this to `false` when Heist Island nodes are no longer needed.

```
NativeDB Introduced: v2189
```

## Parameters
* **bAllow**: `true` to enable Heist Island road nodes for streaming, `false` to disable them.
