---
ns: CAM
---
## SET_USE_HI_DOF

```c
// 0xA13B0222F3D94A94 0x8BBF2950
void SET_USE_HI_DOF();
```

Needs to be called every tick to make the active camera use a high depth of field.  
The DoF can be customized using [SET_CAM_NEAR_DOF](_#_0x3FA4BF0A7AB7DE2C), [SET_CAM_FAR_DOF](_#_0xEDD91296CD01AEE0), [SET_CAM_USE_SHALLOW_DOF_MODE](_#_0x16A96863A17552BB), [SET_CAM_DOF_STRENGTH](_#_0x5EE29B4D7D5DF897). (Example: https://forum.cfx.re/t/camera-depth-of-field-settings/2433316/3)
