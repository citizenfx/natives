---
ns: CAM
---
## SET_USE_HI_DOF

```c
// 0xA13B0222F3D94A94 0x8BBF2950
void SET_USE_HI_DOF();
```

Needs to be called every tick to make the active camera use a high depth of field. DOF can be customized using `SetCamUseShallowDofMode`, `SetCamNearDof`, `SetCamFarDof` and `SetCamDofStrength`.
