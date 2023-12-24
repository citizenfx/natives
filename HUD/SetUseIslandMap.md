---
ns: HUD
aliases: ["_SET_TOGGLE_MINIMAP_HEIST_ISLAND"]
---
## SET_USE_ISLAND_MAP

```c
// 0x5E1460624D194A38
void SET_USE_ISLAND_MAP(BOOL toggle);
```

Switches the display of the in-game minimap to the Cayo Perico map. This native needs to be called every frame to maintain the toggled state effectively.

```
NativeDB Introduced: v2189
```

## Parameters
* **toggle**: A boolean value where `true` switches the minimap to the Cayo Perico map, and `false` reverts it to the standard map.

## Return value
This native does not return any value.