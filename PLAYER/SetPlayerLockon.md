---
ns: PLAYER
---
## SET_PLAYER_LOCKON

```c
// 0x5C8B2F450EE4328E 0x0B270E0F
void SET_PLAYER_LOCKON(Player player, BOOL toggle);
```

```
Used to toggle the square up aim.
```

## Parameters
* **player**: The player ID to toggle the lock on for.
* **toggle**: Set to false to prevent lock on, set to true to allow for lock on.

## Examples

```lua
local plyId = PlayerId()
SetPlayerLockon(plyId, false)
```
