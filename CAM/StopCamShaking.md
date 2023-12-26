---
ns: CAM
---
## STOP_CAM_SHAKING

```c
// 0xBDECF64367884AC3 0x40D0EB87
void STOP_CAM_SHAKING(Cam camIndex, BOOL instantly);
```


## Parameters
* **camIndex**: Cam index returned by [CREATE_CAM](#_0xC3981DCE61D9E13F)
* **instantly**: If true, the camera stops shaking instantly. If false, it will enter its release phase and fade out.

