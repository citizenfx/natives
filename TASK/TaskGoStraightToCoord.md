---
ns: TASK
---
## TASK_GO_STRAIGHT_TO_COORD

```c
// 0xD76B57B44F1E6F8B 0x80A9E7A7
void TASK_GO_STRAIGHT_TO_COORD(Ped ped, float x, float y, float z, float speed, int timeout, float targetHeading, float distanceToSlide);
```

## Parameters
* **ped**: The ped handle.
* **x**: The x coordinate.
* **y**: The y coordinate.
* **z**: The z coordinate.
* **speed**: The ped movement speed.
* **timeout**: -1 , other values appear to break the ped movement.
* **targetHeading**: The heading you want the ped to be on x,y,z coord.
* **distanceToSlide**: The distance from x,y,z where the ped will start sliding.
