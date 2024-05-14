---
ns: PED
aliases: ["0x2016C603D6B8987C"]
---
## SET_PED_STEERS_AROUND_DEAD_BODIES

```c
// 0x2016C603D6B8987C 0xA6F2C057
void SET_PED_STEERS_AROUND_DEAD_BODIES(Ped ped, BOOL shouldAvoidBodies);
```

```
This native seems to have the purpose of adjusting the AI's driving behaviour, specifically whether or not they will try to avoid/drive around dead bodies.
```

## Parameters
* **ped**: Ped that should be affected by native.
* **shouldAvoidBodies**: Whether or not the affected ped should avoid dead bodies in their driving behaviour.

