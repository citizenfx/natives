---
ns: TASK
---
## TASK_FOLLOW_POINT_ROUTE

```c
// 0x595583281858626E 0xB837C816
void TASK_FOLLOW_POINT_ROUTE(Ped ped, float speed, int flag);
```

```
MulleKD19: Makes the ped go on the created point route.
ped: The ped to give the task to.
speed: The speed to move at in m/s.
int: Flag. Can be 0, 1, 2 or 3.

This last parameter seems to be a behaviour flag, after thorough testing I have come up with this:
0 - Ped follows specified point route and stops
1 - Ped follows specified point route, turns around after reaching end of point route and follows point route back to beginning (-> stops)
2 - Ped patrols specified point route indefinitely (similar behavior to previous flag but in a loop)
3 - Ped patrols specified point route indefinitely, but disregards point route when returning to first point (walks directly towards it)
- Kolopsel

Example:
TASK_FLUSH_ROUTE();
TASK_EXTEND_ROUTE(0f, 0f, 70f);
TASK_EXTEND_ROUTE(10f, 0f, 70f);
TASK_EXTEND_ROUTE(10f, 10f, 70f);
TASK_FOLLOW_POINT_ROUTE(GET_PLAYER_PED(), 1f, 0);
```

## Parameters
* **ped**: The ped to give the task to.
* **speed**: The speed to move at in m/s.
* **flag**: Flag. Can be 0, 1, 2 or 3.

