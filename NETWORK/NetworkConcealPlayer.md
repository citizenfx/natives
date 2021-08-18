---
ns: NETWORK
---
## NETWORK_CONCEAL_PLAYER

```c
// 0xBBDF066252829606 0x72052DB3
void NETWORK_CONCEAL_PLAYER(Player player, BOOL toggle, BOOL p2);
```

On all client(s), that are not present in the instance; you hide the player with NetworkConcealPlayer
On the client(s), that are present in the instance; you hide the players who are not in the instance with NetworkConcealPlayer.

This would conceal the player(s) in an unspecified location for each client, so any entity actions outside of an instance would not intervene with the instance that a given player would be in.

## Parameters
* **player**: 
* **toggle**: 
* **p2**: 

