---
ns: TASK
---
## TASK_COMBAT_PED

```c
// 0xF166E48407BAC484 0xCB0D8932
void TASK_COMBAT_PED(Ped ped, Ped targetPed, int combatFlags, int taskThreatResponseFlags);
```

Makes the specified ped attack the target ped.  

```c
enum eTaskCombatPedFlags
{
	COMBAT_PED_NONE = 0,
	COMBAT_PED_PREVENT_CHANGING_TARGET = 67108864,
	COMBAT_PED_DISABLE_AIM_INTRO = 134217728
}

enum eTaskThreatResponseFlags
{
	TASK_THREAT_RESPONSE_NONE = 0,
	TASK_THREAT_RESPONSE_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED = 16
}
```

## Parameters
* **ped**: the ped to combat the target ped
* **targetPed**: the target ped
* **combatFlags**: flags determining how the ped will combat the target ped (usually 0)
* **taskThreatResponseFlags**: flags determining how the ped will respond to threats from the target ped (usually 16)

