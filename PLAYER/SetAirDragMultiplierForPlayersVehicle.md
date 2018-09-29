---
ns: PLAYER
---
## SET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE

```c
// 0xCA7DC8329F0A1E9E 0xF20F72E5
void SET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE(Player player, float multiplier);
```

```
This can be between 1.0f - 14.9f   
You can change the max in IDA from 15.0. I say 15.0 as the function blrs if what you input is greater than or equal to 15.0 hence why it's 14.9 max default.  
On PC the multiplier can be between 0.0f and 50.0f (inclusive).  
```

## Parameters
* **player**: 
* **multiplier**: 

