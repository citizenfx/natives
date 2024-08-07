---
ns: MISC
aliases: ["0x0A60017F841A54F2"]
---
## SCRIPT_RACE_INIT

```c
// 0x0A60017F841A54F2 0x2D33F15A
void SCRIPT_RACE_INIT(int numCheckpoints, int numLaps, int numPlayers, Player localPlayer);
```

Initializes a script race in GTA:Online and sets up the helper split time system.

```
NativeDB Introduced: v323
```

## Parameters
* **numCheckpoints**: The total number of checkpoints in the race
* **numLaps**: The total number of laps in the race.
* **numPlayers**: The total number of players participating in the race.
* **localPlayer**: Local player in the race.