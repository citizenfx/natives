---
ns: MISC
aliases: ["0x1BB299305C3E8C13"]
---
## SCRIPT_RACE_PLAYER_HIT_CHECKPOINT

```c
// 0x1BB299305C3E8C13 0xA27F4472
void SCRIPT_RACE_PLAYER_HIT_CHECKPOINT(Ped ped, int checkpoint, int lap, int time);
```

Records that a player has successfully passed a checkpoint during a scripted race in GTA:Online. This native should be used after initializing the race with [`SCRIPT_RACE_INIT`](#_0x0A60017F841A54F2).

```
NativeDB Introduced: v323
```

## Parameters
* **ped**: The index of the Ped who hit the checkpoint.
* **checkpoint**: The checkpoint number that the player has passed.
* **lap**: The current lap that the player is on.
* **time**: The time it took for the player to reach this checkpoint from the start of the race or the last checkpoint.
