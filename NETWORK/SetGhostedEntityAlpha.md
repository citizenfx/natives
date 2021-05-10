---
ns: NETWORK
aliases: ["0x658500AE6D723A7E"]
---
## _SET_GHOSTED_ENTITY_ALPHA

```c
// 0x658500AE6D723A7E
void _SET_GHOSTED_ENTITY_ALPHA(int alpha);
```

Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#_0x4BA166079D658ED4).

'Solidness' cannot be achieved using 255 - this will have the opposite effect of it defaulting to 128 it seems (or just having no effect at all).

## Parameters
* **alpha**: A value between 1 and 254. Default: 128
