---
ns: CAM
---
## SET_CAM_NEAR_DOF

```c
// 0x3FA4BF0A7AB7DE2C 0xF28254DF
void SET_CAM_NEAR_DOF(Cam cam, float nearDOF);
```

Specifies when the camera should start being in focus. Can be used together with [`SET_USE_HI_DOF`](#_0xA13B0222F3D94A94), [`SET_CAM_FAR_DOF`](#_0xEDD91296CD01AEE0), [`SET_CAM_USE_SHALLOW_DOF_MODE`](#_0x16A96863A17552BB), [`SET_CAM_DOF_STRENGTH`](#_0x5EE29B4D7D5DF897) and other DoF related natives.


### Usage Example
A usage example for this native can be found in the following native documentation: [`SET_CAM_DOF_STRENGTH`](#_0x5EE29B4D7D5DF897).

## Parameters
* **cam**: The camera handle
* **nearDOF**: Distance in in standard units
