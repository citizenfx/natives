---
ns: NETWORK
aliases: ["_NETWORK_PLAYER_GET_USER_ID"]
---
## NETWORK_PLAYER_GET_USERID

```c
// 0x4927FC39CD0869A0 0x4EC0D983
char* NETWORK_PLAYER_GET_USERID(Player player, cs_type(charPtr) int* userID);
```

```
Takes a 24 char buffer. Returns the buffer or "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
```

## Parameters
* **player**: 
* **userID**: 

## Return value
