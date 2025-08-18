---
ns: TASK
---
## TASK_START_SCENARIO_IN_PLACE

```c
// 0x142A02425FF02BD9 0xE50D6DDE
void TASK_START_SCENARIO_IN_PLACE(Ped ped, char* scenarioName, int timeToLeave, BOOL playIntroClip);
```

Puts the ped into the given scenario immediately at their current location. [List of scenario names](https://pastebin.com/6mrYTdQv) or in `update/update.rpf/common/data/ai/scenarios.meta`.

## Parameters
* **ped**: The ped handle.
* **scenarioName**: The name of the scenario to start.
* **timeToLeave**: Sets the timeout on the scenario point to the specified time in milliseconds. If less than 0, sets the `IdleForever` flag.
* **playIntroClip**: If the ped should play the scenarios enter animation. Sets the `SkipEnterClip` flag.

