---
ns: NETWORK
---
## NETWORK_CLAN_PLAYER_GET_DESC

```c
// 0xEEE6EACBE8874FBA 0x6EE4A282
BOOL NETWORK_CLAN_PLAYER_GET_DESC(int* clanDesc, int bufferSize, int* networkHandle);
```

```
bufferSize is 35 in the scripts.  
bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.  
the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]  
pastebin.com/cSZniHak  
```

## Parameters
* **clanDesc**: 
* **bufferSize**: 
* **networkHandle**: 

## Return value
