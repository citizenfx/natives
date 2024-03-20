---
ns: PED
aliases: ["0x0B3E35AC043707D9"]
---
## SET_PED_MOVE_RATE_IN_WATER_OVERRIDE

```c
// 0x0B3E35AC043707D9
void SET_PED_MOVE_RATE_IN_WATER_OVERRIDE(Ped ped, float moverate);
```

Set the move speed of a ped inside water. Function must be called every frame to work, otherwise moverate will go back to the default (1.0).

```
https://alloc8or.re/gta5/nativedb/?n=0x83A169EABCDB10A2?n=0x0B3E35AC043707D9
```

## Parameters
* **ped**: Ped that the move rate in water should be changed for
* **moverate**: Desired moverate (Default is 1.0f)

