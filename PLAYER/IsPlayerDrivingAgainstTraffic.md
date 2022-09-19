---
ns: PLAYER
aliases: ["0xF10B44FD479D69F3"]
---
## _IS_PLAYER_DRIVING_AGAINST_TRAFFIC

```c
// 0xF10B44FD479D69F3 0x1E359CC8
BOOL _IS_PLAYER_DRIVING_AGAINST_TRAFFIC(Player player, int p1);
```

Returns true if the player is in a vehicle and actively moving against traffic (cannot be stationary), otherwise returns false.

Used in "Al Di Napoli" mission for a voiceline.

## Parameters
* **player**: Player ID
* **p1**: Only use is 2, other values do not return true

## Return value
Whether or not the player is actively (moving) driving against traffic