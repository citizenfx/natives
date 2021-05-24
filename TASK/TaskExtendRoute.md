---
ns: TASK
---
## TASK_EXTEND_ROUTE

```c
// 0x1E7889778264843A 0x43271F69
void TASK_EXTEND_ROUTE(float x, float y, float z);
```

Adds a new point to the current point route; a maximum of 8 points can be added.

Call [TASK_FLUSH_ROUTE](#_0x841142A1376E9006) before the first call to this. Call [TASK_FOLLOW_POINT_ROUTE](#_0x595583281858626E) to make the Ped go the route.

## Parameters
* **x**: 
* **y**: 
* **z**: 

