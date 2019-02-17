---
ns: NETWORK
aliases: ["0x125E6D638B8605D4"]
---
## _NETWORK_GET_PLAYER_COORDS

```c
// 0x125E6D638B8605D4
Vector3 _NETWORK_GET_PLAYER_COORDS(Player player);
```

Returns the coordinates of another player.

Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).


## Parameters
* **player**: The player id, MUST be another player.

## Return value
A Vector3 containing the coordinates of another player.