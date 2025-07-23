---
ns: CAM
aliases: ["0x0FB82563989CF4FB"]
---
## ADD_CAM_SPLINE_NODE_USING_CAMERA

```c
// 0x0FB82563989CF4FB 0xBA6C085B
void ADD_CAM_SPLINE_NODE_USING_CAMERA(Cam cam, Cam sourceCam, int duration, int flags);
```

Takes a camera and uses the information from it as a camera spline node. 

## Parameters
* **cam**: Camera to add cam2 as a node to
* **sourceCam**: Camera used for reference
* **duration**: Duration used for transition, has no effect for the first node.
* **flags**: Flags to be set, see [`ADD_CAM_SPLINE_NODE`](#_0x8609C75EC438FB3B)

## Examples
```cs
AddCamSplineNodeUsingCamera(cam, CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", 975.9832f, 191.3923f, 86.82342f, -2.795285f, -0f, 154.0656f, 45f, true, 2), 5000, 16);
```