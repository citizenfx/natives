---
ns: PLAYER
aliases: ["0xF10B44FD479D69F3", "_IS_PLAYER_DRIVING_DANGEROUSLY"]
---
## GET_IS_PLAYER_DRIVING_WRECKLESS

```c
// 0xF10B44FD479D69F3 0x1E359CC8
BOOL GET_IS_PLAYER_DRIVING_WRECKLESS(Player player, int type);
```

Violation types:
```
enum eViolationType {
  VT_PAVED_PEDESTRIAN_AREAS = 0,
  VT_RUNNING_REDS,
  VT_AGAINST_TRAFFIC
};
```

Checks if a player is performing a certain type of traffic violation.

* Type 0: Checks if the player is driving outside designated road areas pedestrians would walk on (specifically paved sidewalks).
* Type 1: Checks if the player is running through reds, takes some time to return true.
* Type 2: Checks if the player is driving on the wrong side of the road (against traffic).

Used solely in "Al Di Napoli" with type 2 for a voiceline.

## Parameters
* **player**: Player ID
* **type**: A violation type from 0 to 2 (`eViolationType`).

## Return value
Whether or not the player is actively performing a certain type of traffic violation.
