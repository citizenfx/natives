---
ns: CAM
aliases: ["0x0A9F2A468B328E74"]
---
## ADD_CAM_SPLINE_NODE_USING_CAMERA_FRAME

```c
// 0x0A9F2A468B328E74 0x30510511
void ADD_CAM_SPLINE_NODE_USING_CAMERA_FRAME(Cam cam, Cam sourceCam, int duration, int flags);
```

Appends a full node on to a spline camera. The frame parameters of this new node are cloned from an existing scripted camera. The difference between this and [`ADD_CAM_SPLINE_NODE_USING_CAMERA`](#_0x0FB82563989CF4FB) is that this one clones the parameters of the current frame.

## Parameters
* **cam**: Camera handle to append
* **sourceCam**: Camera to clone parameters.
* **duration**: The time taken to transition from the previous node to this node, in milliseconds.
* **flags**: Flags to be set, see [`ADD_CAM_SPLINE_NODE`](#_0x8609C75EC438FB3B)

