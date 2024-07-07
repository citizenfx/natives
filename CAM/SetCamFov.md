---
ns: CAM
---
## SET_CAM_FOV

```c
// 0xB13C14F66A00D047 0xD3D5D74F
void SET_CAM_FOV(Cam cam, float fieldOfView);
```

Adjusts the field of view (FOV) for a specified camera, allowing for a wider or narrower perspective of the game world. The field of view is measured in degrees and affects how much of the game world is visible at any given moment through the camera.

```
NativeDB Introduced: v323
```

## Parameters
* **cam**: The camera whose FOV is being set.
* **fieldOfView**: The new FOV value, in degrees. Valid range is from `1.0f` (minimum FOV, for a very narrow view) to `130.0f` (maximum FOV, for a very wide view).