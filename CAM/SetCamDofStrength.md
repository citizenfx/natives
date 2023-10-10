---
ns: CAM
---
## SET_CAM_DOF_STRENGTH

```c
// 0x5EE29B4D7D5DF897 0x3CC4EB3F
void SET_CAM_DOF_STRENGTH(Cam cam, float dofStrength);
```

Specifies how much the DoF effect should be applied (Set using [`SET_CAM_NEAR_DOF`](#_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#_0xEDD91296CD01AEE0), etc.). Example: https://forum.cfx.re/t/camera-depth-of-field-settings/2433316/3)

## Parameters
* **cam**: The camera
* **dofStrength**: Depth of Field strength (between 0.0 and 1.0)

