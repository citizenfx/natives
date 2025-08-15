---
ns: TASK
---
## TASK_HANDS_UP

```c
// 0xF2EAB31979A7F910 0x8DCC19C5
void TASK_HANDS_UP(Ped ped, int duration, Ped pedToFace, int timeToFacePed, int flags);
```

Sets the hands up to the specified ped.
Flags:
```c
enum TASK_HANDS_UP_FLAGS {
	HANDS_UP_NOTHING = 0,
	HANDS_UP_STRAIGHT_TO_LOOP = 1
}
```

## Parameters
* **ped**: Ped to set hands up.
* **duration**: Time to perform the task. -1 to make it forever
* **pedToFace**: The ped to face. Null to not face any ped.
* **timeToFacePed**: Time to face the ped.
* **flags**: Flag to set. Read description

