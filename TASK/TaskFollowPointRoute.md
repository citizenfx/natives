---
ns: TASK
---
## TASK_FOLLOW_POINT_ROUTE

```c
// 0x595583281858626E 0xB837C816
void TASK_FOLLOW_POINT_ROUTE(Ped ped, float speed, int routeMode);
```

Makes the ped go on a point route.

```c
enum eFollowPointRouteMode {
	TICKET_SINGLE = 0,
	TICKET_RETURN = 1,
	TICKET_SEASON = 2,
	TICKET_LOOP = 3
}
```

This native is often times used with [`TASK_FLUSH_ROUTE`](#_0x841142A1376E9006) and [`TASK_EXTEND_ROUTE`](#_0x1E7889778264843A)


## Parameters
* **ped**: The ped to give the task to.
* **speed**: The speed to move at in m/s.
* **routeMode**: The route mode to use, refer to `eFollowPointRouteMode`

## Examples
```lua
TaskFlushRoute()
TaskExtendRoute(0.0, 0.0, 70.0)
TaskExtendRoute(10.0, 0.0, 70.0)
TaskExtendRoute(10.0, 10.0, 70.0)
TaskFollowPointRoute(PlayerPedId(), 1.0, 0)
```
