---
ns: PLAYER
---
## SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER

```c
// 0x5DB660B38DD98A31 0x45514731
void SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER(Player player, float regenRate);
```

## Examples
```lua
-- To disable the health recharge completely:
SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)

-- To reset it back to the normal recharge speed:
SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
```

## Parameters
* **player**: The local player ID.
* **regenRate**: The recharge multiplier, a value between 0.0 and 1.0.
