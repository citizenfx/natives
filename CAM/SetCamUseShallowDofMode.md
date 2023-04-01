---
ns: CAM
---
## SET_CAM_USE_SHALLOW_DOF_MODE

```c
// 0x16A96863A17552BB 0x8306C256
void SET_CAM_USE_SHALLOW_DOF_MODE(Cam cam, BOOL toggle);
```

Enables or disables the usage of a shallow DOF. Needs to be set to true to use `SetCamNearDof`, `SetCamFarDof`, etc. Doesn't need to be called every tick.

## Parameters
* **cam**: 
* **toggle**: 

