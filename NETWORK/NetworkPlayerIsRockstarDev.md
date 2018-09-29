---
ns: NETWORK
---
## NETWORK_PLAYER_IS_ROCKSTAR_DEV

```c
// 0x544ABDDA3B409B6D 0xF6659045
BOOL NETWORK_PLAYER_IS_ROCKSTAR_DEV(Player player);
```

```
Checks if a specific value (BYTE) in CPlayerInfo is nonzero.  
Returns always false in Singleplayer.  
No longer used for dev checks since first mods were released on PS3 & 360.  
R* now checks with the is_dlc_present native for the dlc hash 2532323046,  
if that is present it will unlock dev stuff.  
```

## Parameters
* **player**: 

## Return value
