---
ns: PLAYER
---
## SET_PLAYER_CONTROL

```c
// 0x8D32347D6D4C40A2 0xD17AFCD8
void SET_PLAYER_CONTROL(Player player, BOOL bHasControl, int flags);
```

```
Flags:
SPC_AMBIENT_SCRIPT = (1 << 1),
SPC_CLEAR_TASKS = (1 << 2),
SPC_REMOVE_FIRES = (1 << 3),
SPC_REMOVE_EXPLOSIONS = (1 << 4),
SPC_REMOVE_PROJECTILES = (1 << 5),
SPC_DEACTIVATE_GADGETS = (1 << 6),
SPC_REENABLE_CONTROL_ON_DEATH = (1 << 7),
SPC_LEAVE_CAMERA_CONTROL_ON = (1 << 8),
SPC_ALLOW_PLAYER_DAMAGE = (1 << 9),
SPC_DONT_STOP_OTHER_CARS_AROUND_PLAYER = (1 << 10),
SPC_PREVENT_EVERYBODY_BACKOFF = (1 << 11),
SPC_ALLOW_PAD_SHAKE = (1 << 12)
See: https://alloc8or.re/gta5/doc/enums/eSetPlayerControlFlag.txt
```

## Parameters
* **player**: 
* **bHasControl**: 
* **flags**: 

