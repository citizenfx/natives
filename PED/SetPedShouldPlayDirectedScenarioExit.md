---
ns: PED
aliases: ["0xEC6935EBE0847B90"]
---
## _SET_PED_SHOULD_PLAY_DIRECTED_SCENARIO_EXIT

```c
// 0xEC6935EBE0847B90 0x761F8F48
cs_type(Any) BOOL _SET_PED_SHOULD_PLAY_DIRECTED_SCENARIO_EXIT(Ped ped, cs_type(Any) float x, cs_type(Any) float y, cs_type(Any) float z);
```

When this ped receives its next script task, they will exit from their scenario using the normal scenario exit.
Exiting the scenario may take several frames while the ped is playing the exit animation.
If the ped is not currently using a scenario at the time of the command or 0,0,0 is specified as the reaction position,
then the ped will by default attempt to direct their exit forwards.

## Parameters
* **ped**: the ped who should play a normal (unhurried) exit the next time they are given a script command.
* **x**: X Coordinate.
* **y**: Y Coordinate.
* **z**: Z Coordinate.

## Return value
Returns true if the position was successfully set.
