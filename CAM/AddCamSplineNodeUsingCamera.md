---
ns: CAM
aliases: ["0x0FB82563989CF4FB"]
---
## ADD_CAM_SPLINE_NODE_USING_CAMERA

```c
// 0x0FB82563989CF4FB 0xBA6C085B
void ADD_CAM_SPLINE_NODE_USING_CAMERA(Cam cam, Cam cam2, int length, int p3);
```

Takes a camera and uses the information from it as a camera spline node. 


## Parameters
* **cam**: Camera to add cam2 as a node to
* **cam2**: Camera used for reference
* **length**: Duration used for transition, has no effect for the first node.
* **p3**: 

## Examples
```cs
AddCamSplineNodeUsingCamera(cam, CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", 975.9832f, 191.3923f, 86.82342f, -2.795285f, -0f, 154.0656f, 45f, true, 2), 5000, 3);
```
