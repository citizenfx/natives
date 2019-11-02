---
ns: NETWORK
aliases: ["_NETWORK_PLAYER_GET_USER_ID"]
---
## NETWORK_PLAYER_GET_USERID

```c
// 0x4927FC39CD0869A0 0x4EC0D983
char* NETWORK_PLAYER_GET_USERID(Player player, char* userID);
```

```
Sets [userID] to the user id of the given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.  
```

```
NativeDB Parameter 1: int* userID
```

## Parameters
* **player**: 
* **userID**: 

## Return value
