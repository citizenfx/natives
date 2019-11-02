---
ns: PLAYER
---
## SIMULATE_PLAYER_INPUT_GAIT

```c
// 0x477D5D63E63ECA5D 0x0D77CC34
void SIMULATE_PLAYER_INPUT_GAIT(Player player, float amount, int gaitType, float speed, BOOL p4, BOOL p5);
```

```
This is to make the player walk without accepting input from INPUT.  
gaitType is in increments of 100s. 2000, 500, 300, 200, etc.  
p4 is always 1 and p5 is always 0.  
C# Example :  
Function.Call(Hash.SIMULATE_PLAYER_INPUT_GAIT, Game.Player, 1.0f, 100, 1.0f, 1, 0); //Player will go forward for 100ms  
```

## Parameters
* **player**: 
* **amount**: 
* **gaitType**: 
* **speed**: 
* **p4**: 
* **p5**: 

