---
ns: PLAYER
---
## SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER

```c
// 0x5DB660B38DD98A31 0x45514731
void SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER(Player player, float regenRate);
```

This multiplier is reset to `1.0` every time the player ped is changed, often times via [`SET_PLAYER_MODEL`](#_0x00A1CADD00108836) or [`CHANGE_PLAYER_PED`](#_0x048189FAC643DEEE).

## Parameters
* **player**: The local player ID, see [PLAYER_ID](#_0x4F8644AF03D0E0D6).
* **regenRate**: The recharge multiplier, this value needs to be a positive float value to work.

## Examples
```lua
-- To disable the health recharge completely:
SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)

-- To reset it back to the normal recharge speed:
SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
```

