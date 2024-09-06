---
ns: TASK
---
## TASK_START_SCENARIO_AT_POSITION

```c
// 0xFA4EFC79F69D4F07 0xAA2C4AC2
void TASK_START_SCENARIO_AT_POSITION(Ped ped, char* scenarioName, float x, float y, float z, float heading, int timeToLeave, BOOL playIntro, BOOL warp);
```

The ped will move or warp to the position and heading given, then start the scenario passed. See [`TASK_START_SCENARIO_IN_PLACE`](#_0x142A02425FF02BD9) for a list of scenarios.

## Parameters
* **ped**: The ped handle.
* **scenarioName**: The name of the scenario to start.
* **x**: The x coordinate to start at.
* **y**: The y coordinate to start at.
* **z**: The z coordinate to start at. Should be the ground position plus the ped's ground to root offset.
* **heading**: The heading to start at.
* **timeToLeave**: Sets the timeout on the scenario point to the specified time in milliseconds. If less than 0, sets the `IdleForever` flag.
* **playIntro**: If the ped should play the scenarios enter animation. Sets the `SkipEnterClip` flag.
* **warp**: If the ped should be warped to the position. Sets the `Warp` flag.

