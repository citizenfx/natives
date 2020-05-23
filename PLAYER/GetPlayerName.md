---
ns: PLAYER
---
## GET_PLAYER_NAME

```c
// 0x6D0DE6A7B5DA71F8 0x406B4B20
char* GET_PLAYER_NAME(int playerSrc);
```

Returns the players name from a specified player index

## Parameters
* **playerSrc**: The player index, or -1 to get the local player ped.

## Return value
The name of the queried player. Returns null if playerSrc