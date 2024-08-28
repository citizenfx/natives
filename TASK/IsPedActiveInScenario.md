---
ns: TASK
---
## IS_PED_ACTIVE_IN_SCENARIO

```c
// 0xAA135F9482C82CC3 0x05038F1A
BOOL IS_PED_ACTIVE_IN_SCENARIO(Ped ped);
```

This is a stricter version of [`IS_PED_USING_ANY_SCENARIO`](#_0x57AB4A3080F85143). It only returns true if the ped is playing the ambient animations associated with the scenario.

## Parameters
* **ped**: The ped handle.

## Return value
Returns true if the ped is in a using a scenario and is doing the ambient animations.
