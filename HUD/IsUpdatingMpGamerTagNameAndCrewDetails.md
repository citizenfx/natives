---
ns: HUD
aliases: ["0xEB709A36958ABE0D","_HAS_MP_GAMER_TAG_2","_HAS_MP_GAMER_TAG_CREW_FLAGS_SET", "_IS_VALID_MP_GAMER_TAG_MOVIE"]
---
## IS_UPDATING_MP_GAMER_TAG_NAME_AND_CREW_DETAILS

```c
// 0xEB709A36958ABE0D 0xF11414C4
BOOL IS_UPDATING_MP_GAMER_TAG_NAME_AND_CREW_DETAILS(int playerId);
```

When this native returns true, do not call [`SET_MP_GAMER_TAG_NAME`](#_0xDEA2B8283BAA3944).

## Parameters
* **playerId**: Local ID of the player.

## Return value
Returns if game code is currently updating gamer tag and crew details for a player's name tag.
