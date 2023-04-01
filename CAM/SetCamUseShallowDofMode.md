---
ns: CAM
---
## SET_CAM_USE_SHALLOW_DOF_MODE

```c
// 0x16A96863A17552BB 0x8306C256
void SET_CAM_USE_SHALLOW_DOF_MODE(Cam cam, BOOL toggle);
```

Enables or disables the usage of a shallow DOF. Needs to be set to true to use [SET_CAM_NEAR_DOF](_#_0x3FA4BF0A7AB7DE2C), [SET_CAM_FAR_DOF](_#_0xEDD91296CD01AEE0), etc. Doesn't need to be called every tick.

## Parameters
* **cam**: 
* **toggle**: 

