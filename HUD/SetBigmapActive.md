---
ns: HUD
aliases: ["_SET_RADAR_BIGMAP_ENABLED"]
---
## SET_BIGMAP_ACTIVE

```c
// 0x231C8F89D0539D8F 0x08EB83D2
void SET_BIGMAP_ACTIVE(BOOL toggleBigMap, BOOL showFullMap);
```

Toggles the big minimap state like in GTA:Online.

To get the current state of the minimap, use [`IS_BIGMAP_ACTIVE`](#_0xFFF65C63).

## Parameters
* **toggleBigMap**: Enable or disable the expanded minimap.
* **showFullMap**: Enable or disable the full map from being shown on the minimap, requires p0 to be true.

