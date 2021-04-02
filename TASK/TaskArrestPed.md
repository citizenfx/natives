---
ns: TASK
---
## TASK_ARREST_PED

```c
// 0xF3B9A78A178572B1 0xBC0F153D
void TASK_ARREST_PED(Ped ped, Ped target);
```

```
Example from "me_amanda1.ysc.c4":
TASK::TASK_ARREST_PED(l_19F /* This is a Ped */ , PLAYER::PLAYER_PED_ID());
Example from "armenian1.ysc.c4":
if (!PED::IS_PED_INJURED(l_B18[0/*1*/])) {
    TASK::TASK_ARREST_PED(l_B18[0/*1*/], PLAYER::PLAYER_PED_ID());
}
I would love to have time to experiment to see if a player Ped can arrest another Ped. Might make for a good cop mod.
Looks like only the player can be arrested this way. Peds react and try to arrest you if you task them, but the player charater doesn't do anything if tasked to arrest another ped.
```

## Parameters
* **ped**: 
* **target**: 

