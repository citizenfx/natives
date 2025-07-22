---
ns: OBJECT
aliases: ["0x616093EC6B139DD9"]
---
## _TOGGLE_USE_PICKUPS_FOR_PLAYER

```c
// 0x616093EC6B139DD9 0x7FADB4B9
void _TOGGLE_USE_PICKUPS_FOR_PLAYER(Player player, Hash pickupHash, BOOL toggle);
```

```
Disabling/enabling a player from getting pickups. From the scripts:
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
```

## Parameters
* **player**: Player id. Use PlayerId() for your own player.
* **pickupHash**: Hash of the pickup, obtainable with GetHashKey(pickup)
* **toggle**: boolean that enables/disables the pickup drop (false to disable, true to enable)

## Examples
Toggles the possibility for the player to drop the weapon pickups after death

```lua
local pickup = GetHashKey("PICKUP_WEAPON_ADVANCEDRIFLE")
ToggleUsePickupsForPlayer(PlayerId(), pickup, false)
```
