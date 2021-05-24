---
ns: TASK
---
## TASK_FOLLOW_POINT_ROUTE

```c
// 0x595583281858626E 0xB837C816
void TASK_FOLLOW_POINT_ROUTE(Ped ped, float speed, int unknown);
```

```
MulleKD19: Makes the ped go on the created point route.
ped: The ped to give the task to.
speed: The speed to move at in m/s.
int: Unknown. Can be 0, 1, 2 or 3.
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
* **unknown**: Unknown. Can be 0, 1, 2 or 3.

