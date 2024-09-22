---
ns: PLAYER
aliases: ["0xF10B44FD479D69F3"]
---
## _IS_PLAYER_DRIVING_DANGEROUSLY

```c
// 0xF10B44FD479D69F3 0x1E359CC8
BOOL _IS_PLAYER_DRIVING_DANGEROUSLY(Player player, int type);
```

```c
enum eViolationType {
  // Checks if the player is driving on pedestrians walk ways
  VT_PAVED_PEDESTRIAN_AREAS = 0,
  // Checks if the player is running through red lights
  // This takes some time to return true.
  VT_RUNNING_REDS = 1,
  // checks if the player is driving on the wrong side of the road
  VT_AGAINST_TRAFFIC = 2
};
```

Used solely in "Al Di Napoli" with type 2 for a voiceline.

## Parameters
* **player**: Player ID
* **type**: Refer to `eViolationType`.

## Return value
Returns true if the player is performing the `type` traffic violation.
