---
ns: CAM
---
## SET_CAM_PARAMS

```c
// 0xBFD8727AEA3CCEBA 0x2167CEBF
void SET_CAM_PARAMS(Cam cam, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fieldOfView, int transitionSpeed, int p9, int p10, int rotationOrder);
```


## Parameters
* **cam**: 
* **posX**: 
* **posY**: 
* **posZ**: 
* **rotX**: 
* **rotY**: 
* **rotZ**: 
* **fieldOfView**: 
* **transitionSpeed**: The time it takes for the camera to transition to new param values
* **p9**: 
* **p10**: 
* **rotationOrder**: The order of rotation values (`0`-`5`)

### Example usage of transition speed in GTA:

```c
// finale_heist2a.c
// transitions camera of heli view from left to right as seen in the following clip: https://youtu.be/XiEQHvfrc98?t=1141
// (which takes 9100ms to complete)
cam::set_cam_params(iLocal_2514, -1659.574f, -707.8544f, 29.23778f, -7.422939f, 0.059666f, -117.3886f, 43.0557f, 0, 1, 1, 2);
cam::set_cam_params(iLocal_2514, -1660.919f, -710.7487f, 28.88381f, -7.50235f, 0.059666f, -111.7328f, 43.0557f, 9100, 0, 0, 2);
```

### Rotation Orders

These rotation orders were shamelessly copied from the `GetEntityRotation` documentation. Thanks to @gottfriedleibniz for figuring out!

* **0**: ZYX - Rotate around the z-axis, then the y-axis and finally the x-axis.
* **1**: YZX - Rotate around the y-axis, then the z-axis and finally the x-axis.
* **2**: ZXY - Rotate around the z-axis, then the x-axis and finally the y-axis.
* **3**: XZY - Rotate around the x-axis, then the z-axis and finally the y-axis.
* **4**: YXZ - Rotate around the y-axis, then the x-axis and finally the z-axis.
* **5**: XYZ - Rotate around the x-axis, then the y-axis and finally the z-axis.
