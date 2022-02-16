---
ns: HUD
aliases: ["0xD29EC58C2F6B5014", "_SET_MP_GAMER_HEALTH_BAR_DISPLAY"]
---
## _SET_MP_GAMER_TAG_DISABLE_PLAYER_HEALTH_SYNC

```c
// 0xD29EC58C2F6B5014
void _SET_MP_GAMER_TAG_DISABLE_PLAYER_HEALTH_SYNC(int gamerTagId, BOOL toggle);
```

By default, the player health value shown by a gamer tag's health bar is synchronised with the health of the ped it is attached to.
This native disables that behaviour, allowing [`_SET_MP_GAMER_TAG_OVERRIDE_PLAYER_HEALTH`](#_0x1563FE35E9928E67) to have an effect.


## Parameters
* **gamerTagId**: 
* **toggle**: If player health synchronisation should be disabled.
