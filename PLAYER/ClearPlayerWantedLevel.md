---
ns: PLAYER
---
## CLEAR_PLAYER_WANTED_LEVEL

```c
// 0xB302540597885499 0x54EA5BCC
void CLEAR_PLAYER_WANTED_LEVEL(Player player);
```

```
This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);  
PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.  
```

## Parameters
* **player**: 

