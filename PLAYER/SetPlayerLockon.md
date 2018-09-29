---
ns: PLAYER
---
## SET_PLAYER_LOCKON

```c
// 0x5C8B2F450EE4328E 0x0B270E0F
void SET_PLAYER_LOCKON(Player player, BOOL toggle);
```

```
Example from fm_mission_controler.ysc.c4:  
PLAYER::SET_PLAYER_LOCKON(PLAYER::PLAYER_ID(), 1);  
All other decompiled scripts using this seem to be using the player id as the first parameter, so I feel the need to confirm it as so.  
No need to confirm it says PLAYER_ID() so it uses PLAYER_ID() lol.  
```

## Parameters
* **player**: 
* **toggle**: 

