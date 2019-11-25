---
ns: PLAYER
aliases: ["0x5702B917B99DB1CD"]
---
## SET_PLAYER_TARGET_LEVEL

```c
// 0x5702B917B99DB1CD 0x772DA539
void SET_PLAYER_TARGET_LEVEL(int targetLevel);
```

```
Jenkins hash: 0x772DA539  
p0 looks like Player or int (found in "am_pi_menu")  
Dr. Underscore (1/6/18):  
It isn't Player, it is an int.  
Only two references anywhere, both in am_pi_menu.  
One uses globals, the other one uses a helper function that is passing in the outValue of "STATS::STAT_GET_INT"; I have no clue what is being passed in for the stat hash.  
```

## Parameters
* **targetLevel**: 

