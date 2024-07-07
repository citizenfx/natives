---
ns: NETWORK
---
## NETWORK_OVERRIDE_CLOCK_TIME

```c
// 0xE679E3E06E363892 0xC077BCD6
void NETWORK_OVERRIDE_CLOCK_TIME(int hours, int minutes, int seconds);
```

Overrides the game clock time for the local player, allowing for manipulation of the in-game time. This native is effective in both multiplayer and singleplayer modes.

**Note:** Passing wrong data (e.g. hours above 23) will cause the game to crash.

## Parameters
* **hours**: The hour to set (0-23).
* **minutes**: The minute to set (0-59).
* **seconds**: The second to set (0-59).