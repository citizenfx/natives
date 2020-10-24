---
ns: TASK
---
## TASK_PAUSE

```c
// 0xE73A266DB0CA9042 0x17A64668
void TASK_PAUSE(Ped ped, int ms);
```

This tasks the ped to do nothing for the specified amount of miliseconds.
This is useful if you want to add a delay between tasks when using a sequence task.

## Parameters
* **ped**: The ped to pause. Set to this 0 when using task sequences.
* **ms**: The amount of miliseconds to wait.

