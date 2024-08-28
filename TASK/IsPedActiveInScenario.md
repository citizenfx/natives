---
ns: TASK
---
## IS_PED_ACTIVE_IN_SCENARIO

```c
// 0xAA135F9482C82CC3 0x05038F1A
BOOL IS_PED_ACTIVE_IN_SCENARIO(Ped ped);
```

When passing a ped parameter, the function returns true if the ped is currently in any scenario. The ped is really only "in" the scenario when they are playing the ambient animations associated with it, unlike [`IS_PED_USING_ANY_SCENARIO`](#_0x57AB4A3080F85143).

## Parameters
* **ped**: The ped handle.

## Return value
