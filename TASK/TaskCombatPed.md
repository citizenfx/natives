---
ns: TASK
---
## TASK_COMBAT_PED

```c
// 0xF166E48407BAC484 0xCB0D8932
void TASK_COMBAT_PED(Ped ped, Ped targetPed, int combatFlags, int responseFlags);
```

Makes the specified ped attack the target ped.

```c
enum  eTaskCombatPedFlags {
	COMBAT_PED_NONE							= 0,
	COMBAT_PED_PREVENT_CHANGING_TARGET		= 67108864,
	COMBAT_PED_DISABLE_AIM_INTRO			= 134217728
}

enum eTaskThreatResponseFlags {
	TASK_THREAT_RESPONSE_NONE									= 0,
	TASK_THREAT_RESPONSE_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED	= 16
}
```

## Parameters
* **ped**: `Ped` to assign the task to.
* **targetPed**: Target `Ped` of the task.
* **combatFlags**: See `eTaskCombatPedFlags` (default `0`)
* **responseFlags**: See `eTaskThreatResponseFlags` (default `16`)

