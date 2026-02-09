---
ns: NETWORK
---
## NETWORK_GET_KILLER_OF_PLAYER
```c
// 0x2DA41ED6E1FCD7A5 0xD109ACB1A444BD9D
Player NETWORK_GET_KILLER_OF_PLAYER(Player player, Hash* weaponHash);
```

Returns the killer of the specified player and the cause of death weapon hash. Returns `-1` if no killer is found.

## Parameters
* **player**: The player who was killed.
* **weaponHash**: Pointer to receive the cause of death weapon hash.

## Return value
The killer's `Player` ID, or `-1` if no valid killer.
