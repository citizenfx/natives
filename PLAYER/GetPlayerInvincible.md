---
ns: PLAYER
---
## GET_PLAYER_INVINCIBLE

```c
// 0xB721981B2B939E07 0x680C90EE
BOOL GET_PLAYER_INVINCIBLE(Player player);
```

This native will only return true if a player was made invincible with [`SET_PLAYER_INVINCIBLE`](#_0x239528EACDC3E7DE).

You should use [`GET_PLAYER_INVINCIBLE_2`](#_0xF2E3912B) to get both [`SET_PLAYER_INVINCIBLE`](#_0x239528EACDC3E7DE) and [`SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED`](#_0x6BC97F4F4BB3C04B) invincibility state.

## Parameters
* **player**: The player index 

## Return value
A boolean to tell if the player is invincible.