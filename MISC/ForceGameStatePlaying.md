---
ns: MISC
aliases: ["_RESET_LOCALPLAYER_STATE"]
---
## FORCE_GAME_STATE_PLAYING

```c
// 0xC0AA53F866B3134D 0x5D209F25
void FORCE_GAME_STATE_PLAYING();
```

```
Sets the localplayer playerinfo state back to playing (State 0)  
States are:  
-1: "Invalid"  
0: "Playing"  
1: "Died"  
2: "Arrested"  
3: "Failed Mission"  
4: "Left Game"  
5: "Respawn"  
6: "In MP Cutscene"  
```

