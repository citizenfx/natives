---
ns: BRAIN
---
## TASK_JUMP

```c
// 0x0AE4086104E067B1 0x0356E3CE
void TASK_JUMP(Ped ped, BOOL unk, BOOL beastJump, BOOL unk2);
```

## Description
Makes the specified jump. Optionally as beast jump, which is a much higher jump.
NOTE: Task can be triggered even if ped is not on the ground. As well as in vehicle, which can be catastrophic.

## Parameters
* **ped**: The ped to play the task on.
* **unk**: Unknown.
* **beastJump**: Whether to use the beast jump or not.
* **unk2**: Unknown too.

