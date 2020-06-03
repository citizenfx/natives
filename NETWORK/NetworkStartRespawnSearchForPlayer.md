---
ns: NETWORK
aliases: ["0x5A6FFA2433E2F14C"]
---
## NETWORK_START_RESPAWN_SEARCH_FOR_PLAYER

```c
// 0x5A6FFA2433E2F14C 0xC62E77B3
BOOL NETWORK_START_RESPAWN_SEARCH_FOR_PLAYER(Player player, float x, float y, float z, float radius, float p5, float p6, float p7, int flags);
```

```
One of the first things it does is get the players ped.  
Then it calls a function that is used in some tasks and ped based functions.  
```

p5, p6, p7 is another coordinate (or zero), often related to ``GET_BLIP_COORDS``, in the decompiled scripts.

## Parameters
* **player**: 
* **x**: 
* **y**: 
* **z**: 
* **radius**: 
* **p5**: 
* **p6**: 
* **p7**: 
* **flags**: 

## Return value
