---
ns: PLAYER
---
## SET_PLAYER_WANTED_LEVEL

```c
// 0x39FF19C64EF7DA5B 0xB7A0914B
void SET_PLAYER_WANTED_LEVEL(Player player, int wantedLevel, BOOL delayedResponse);
```

## Parameters
* **player**: the target player
* **wantedLevel**: the wanted level 1-5
* **delayedResponse**: false = 0-10sec police spawn response time, true = 10-20sec police spawn response time

## Examples
```lua
local player = PlayerId()
SetPlayerWantedLevel(player, 5, false) -- 5 star wanted level
```
