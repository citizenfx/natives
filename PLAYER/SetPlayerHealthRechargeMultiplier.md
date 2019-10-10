---
ns: PLAYER
---
## SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER

```c
// 0x5DB660B38DD98A31 0x45514731
void SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER(Player player, float regenRate);
```

```
Enable or disable auto regen 
1.0 (default, regen enable))
0.0 (regen disable)

Be sure to use on a player and not on a player like ped
(local PlayerAsPed = GetPlayerPed(-1) --// <-- NOT OK)

To disable regen :
local PlayerAsPlayer = PlayerId() --// <-- OK
SetPlayerHealthRechargeMultiplier(PlayerAsPlayer,0.0)
```

## Parameters
* **player**: 
* **regenRate**: 

