---
ns: PLAYER
aliases: ["0xC388A0F065F5BC34"]
---
## _SET_PLAYER_HEALTH_RECHARGE_LIMIT

```c
// 0xC388A0F065F5BC34
void _SET_PLAYER_HEALTH_RECHARGE_LIMIT(Player player, float limit);
```

## Parameters
- **player**: PlayerId()
- **limit**: float number between 0.1 and 0.9

## Important
It seems that it only accepts numbers between 0.1 and 0.9. Numbers like 1.0 and upper doesn't work

