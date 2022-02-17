---
ns: PLAYER
aliases: ["0xA352C1B864CAFD33", "_RESTORE_PLAYER_STAMINA"]
---
## SET_PLAYER_SPRINT_TIMER_MULTIPLIER

```c
// 0xA352C1B864CAFD33 0x62A93608
void SET_PLAYER_SPRINT_TIMER_MULTIPLIER(Player player, float percentage);
```
Set the deduce speed of the sprint timer. Sprint timer seems to be hardcoded to 10 seconds, and deduce by 1.0 when you sprint.
By using this native, you can **slow down** or **prevent** this timer from deducing, which means the player can sprint forever.

## Parameters
* **player**: Player ID.
* **percentage**: Should set to any value above 0.0 and less than or equal to 0.1. Any value above 0.1 will prevent the sprint timer from deducing.

