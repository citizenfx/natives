---
ns: TASK
---
## IS_SCENARIO_TYPE_ENABLED

```c
// 0x3A815DB3EA088722 0xAE37E969
BOOL IS_SCENARIO_TYPE_ENABLED(char* scenarioType);
```

```
Occurrences in the b617d scripts:
"PROP_HUMAN_SEAT_CHAIR",
"WORLD_HUMAN_DRINKING",
"WORLD_HUMAN_HANG_OUT_STREET",
"WORLD_HUMAN_SMOKING",
"WORLD_MOUNTAIN_LION_WANDER",
"WORLD_HUMAN_DRINKING"
Sometimes used together with MISC::IS_STRING_NULL_OR_EMPTY in the scripts.
scenarioType could be the same as scenarioName, used in for example TASK::TASK_START_SCENARIO_AT_POSITION.
```

## Parameters
* **scenarioType**: 

## Return value
