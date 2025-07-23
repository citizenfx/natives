---
ns: CAM
aliases: ["0x609278246A29CA34"]
---
## ADD_CAM_SPLINE_NODE_USING_GAMEPLAY_FRAME

```c
// 0x609278246A29CA34 0xB4737F03
void ADD_CAM_SPLINE_NODE_USING_GAMEPLAY_FRAME(Cam cam, int duration, int duration);
```

Appends a full node on to a spline camera. The frame parameters of this new node are cloned (live) from the active gameplay frame.

## Parameters
* **cam**: Camera handle
* **duration**: The time taken to transition from the previous node to this node, in milliseconds.
* **flags**: Flags to be set, see [`ADD_CAM_SPLINE_NODE`](#_0x8609C75EC438FB3B)
