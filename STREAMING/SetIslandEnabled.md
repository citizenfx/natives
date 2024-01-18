---
ns: STREAMING
aliases: ["_SET_ISLAND_HOPPER_ENABLED"]
---
## SET_ISLAND_ENABLED

```c
// 0x9A9D1BA639675CF1
void SET_ISLAND_ENABLED(char* islandName, BOOL toggle);
```

Enables the specified island. For more information, see islandhopper.meta

```
NativeDB Introduced: v2189
```

## Parameters
* **islandName**: The name of the island to be enabled or disabled.
* **toggle**: A boolean value where `true` enables the island and `false` disables it.
