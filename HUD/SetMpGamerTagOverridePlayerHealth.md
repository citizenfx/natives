---
ns: HUD
aliases: ["0x1563FE35E9928E67", "_SET_MP_GAMER_HEALTH_BAR_MAX"]
---
## _SET_MP_GAMER_TAG_OVERRIDE_PLAYER_HEALTH

```c
// 0x1563FE35E9928E67
void _SET_MP_GAMER_TAG_OVERRIDE_PLAYER_HEALTH(int gamerTagId, int health, int maximumHealth);
```

Manually sets the player health value for a gamer tag, using the maximum health to calculate what percentage of the bar should be filled.
Has no effect unless [_SET_MP_GAMER_TAG_DISABLE_PLAYER_HEALTH_SYNC](#_0xD29EC58C2F6B5014) has been called prior to disable synchronisation with the attached ped.

## Parameters
* **gamerTagId**: 
* **health**: The amount the health the player has.
* **maximumHealth**: The maximum amount of health the player could have.
