---
ns: NETWORK
aliases: ["0x187382F8A3E0A6C3","_GET_TUNABLES_CONTENT_MODIFIER_ID"]
---
## NETWORK_GET_CONTENT_MODIFIER_LIST_ID

```c
// 0x187382F8A3E0A6C3 0xA78571CA
int NETWORK_GET_CONTENT_MODIFIER_LIST_ID(Hash contentHash);
```

```
Return the content modifier id (the tunables context if you want) of a specific content.  
It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
```

## Parameters
* **contentHash**: 

## Return value
