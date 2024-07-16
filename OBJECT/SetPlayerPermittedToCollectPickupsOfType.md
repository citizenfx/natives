---
ns: OBJECT
aliases: ["0x616093EC6B139DD9", "_TOGGLE_USE_PICKUPS_FOR_PLAYER"]
---
## SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE

```c
// 0x616093EC6B139DD9 0x7FADB4B9
void SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE(Player player, Hash pickupHash, BOOL toggle);
```

```
Disabling/enabling a player from getting pickups. From the scripts:
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);
```

## Parameters
* **player**: 
* **pickupHash**: 
* **toggle**: 

