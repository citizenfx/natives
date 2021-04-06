---
ns: NETWORK
aliases: ["0x658500AE6D723A7E"]
---
## _SET_GHOSTED_ENTITY_ALPHA

```c
// 0x658500AE6D723A7E
void _SET_GHOSTED_ENTITY_ALPHA(int alpha);
```

Sets the alpha value used by `_SET_LOCAL_PLAYER_AS_GHOST`, `SET_NETWORK_VEHICLE_AS_GHOST`, and `_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`.
Solidness cannot be achieved using 255 - this will have the opposite effect of it defaulting to 128 it seems (or just having no effect at all).

## Parameters
* **alpha**: A value between 1 and 254. Default: 128

## Return value
