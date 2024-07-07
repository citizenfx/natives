---
ns: CAM
---
## SET_USE_HI_DOF

```c
// 0xA13B0222F3D94A94 0x8BBF2950
void SET_USE_HI_DOF();
```

Needs to be called every tick to make the active camera use a high depth of field.  
The DoF can be customized using [`SET_CAM_NEAR_DOF`](#_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#_0xEDD91296CD01AEE0), [`SET_CAM_USE_SHALLOW_DOF_MODE`](#_0x16A96863A17552BB), [`SET_CAM_DOF_STRENGTH`](#_0x5EE29B4D7D5DF897) and other DoF related natives.

### Usage Example
A usage example for this native can be found in the following native documentation: [`SET_CAM_DOF_STRENGTH`](#_0x5EE29B4D7D5DF897).
