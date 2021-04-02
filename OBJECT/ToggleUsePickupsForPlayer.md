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
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);
SET_PLAYER_*
```

## Parameters
* **player**: 
* **pickupHash**: 
* **toggle**: 

