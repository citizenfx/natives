---
ns: TASK
---
## TASK_GOTO_ENTITY_OFFSET

```c
// 0xE39B4FF4FDEBDE27 0x1A17A85E
void TASK_GOTO_ENTITY_OFFSET(Ped ped, Entity entity, int duration, float seekRadius, float seekAngleDeg, float moveBlendRatio, int gotoEntityOffsetFlags);
```

Instructs the ped to go to the entity with the given offset.

```c
enum eSeekEntityOffsetFlags {
    ESEEK_OFFSET_ORIENTATES_WITH_ENTITY = 1,
    ESEEK_KEEP_TO_PAVEMENTS = 2
};
```

## Parameters
* **ped**: The ped handle
* **entity**: The target entity handle
* **duration**: The duration in seconds or -1 for forever
* **seekRadius**: How many meters the destination is from the entity
* **seekAngleDeg**: The angle the destination is from the entity
* **moveBlendRatio**: The move blend ratio (speed)
* **gotoEntityOffsetFlags**: The goto entity offset flags
