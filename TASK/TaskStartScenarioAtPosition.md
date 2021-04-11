---
ns: TASK
---
## TASK_START_SCENARIO_AT_POSITION

```c
// 0xFA4EFC79F69D4F07 0xAA2C4AC2
void TASK_START_SCENARIO_AT_POSITION(Ped ped, char* scenarioName, float x, float y, float z, float heading, int duration, BOOL sittingScenario, BOOL teleport);
```

```
Also a few more listed at TASK::TASK_START_SCENARIO_IN_PLACE just above.
---------------
The first parameter in every scenario has always been a Ped of some sort. The second like TASK_START_SCENARIO_IN_PLACE is the name of the scenario.
The next 4 parameters were harder to decipher. After viewing "hairdo_shop_mp.ysc.c4", and being confused from seeing the case in other scripts, they passed the first three of the arguments as one array from a function, and it looked like it was obviously x, y, and z.
I haven't seen the sixth parameter go to or over 360, making me believe that it is rotation, but I really can't confirm anything.
I have no idea what the last 3 parameters are, but I'll try to find out.
-going on the last 3 parameters, they appear to always be "0, 0, 1"
p6 -1 also used in scrips
p7 used for sitting scenarios
p8 teleports ped to position
```

## Parameters
* **ped**: 
* **scenarioName**: 
* **x**: 
* **y**: 
* **z**: 
* **heading**: 
* **duration**: 
* **sittingScenario**: 
* **teleport**: 

