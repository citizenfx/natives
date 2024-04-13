---
ns: TASK
aliases: ["0x92C360B5F15D2302"]
---
## _TASK_PLANE_TAXI

```c
// 0x92C360B5F15D2302
void _TASK_PLANE_TAXI(Ped pilot, Vehicle aircraft, cs_type(Any) float xPos, cs_type(Any) float yPos, cs_type(Any) float zPos, cs_type(Any) float speed, Any p6);
```

The given ped will try to drive the plane to the given coordinates and will then drive around the given coords (the plane will form 8s on the ground)

## Parameters
* **pilot**: The ped driving the plane.
* **aircraft**: The plane used.
* **xPos**: The X coordinate.
* **yPos**: The Y coordinate.
* **zPos**: The Z coordinate.
* **speed**: The speed of the plane (in m/s).
* **p6**: seems to be related to the distance between the plane and the given coords.

