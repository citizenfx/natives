---
ns: PLAYER
aliases: ["0xF10B44FD479D69F3"]
---
## _IS_PLAYER_DRIVING_DANGEROUSLY

```c
// 0xF10B44FD479D69F3 0x1E359CC8
BOOL _IS_PLAYER_DRIVING_DANGEROUSLY(Player player, int type);
```

Checks if a player is performing a certain type of traffic violation.
Type 1: Checks if the player is running through reds, takes some time to return true.
Type 2: Checks if the player is driving in the wrong direction.

Used solely in "Al Di Napoli" with type 2 for a voiceline.

## Parameters
* **player**: Player ID
* **type**: 1: Running red lights, 2: Driving against traffic

## Return value
Whether or not the player is actively (moving) driving against traffic