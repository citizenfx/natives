---
ns: CAM
---
## SET_CAM_USE_SHALLOW_DOF_MODE

```c
// 0x16A96863A17552BB 0x8306C256
void SET_CAM_USE_SHALLOW_DOF_MODE(Cam cam, BOOL toggle);
```

Enables or disables the usage of a shallow DOF. Needs to be set to true to use [`SET_CAM_NEAR_DOF`](#_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#_0xEDD91296CD01AEE0), etc. Doesn't need to be called every tick.


### Usage Example
A usage example for this native can be found in the following native documentation: [`SET_CAM_DOF_STRENGTH`](#_0x5EE29B4D7D5DF897).

## Parameters
* **cam**: The camera handle
* **toggle**: Boolean if the camera should use a shallow depth of field or not
