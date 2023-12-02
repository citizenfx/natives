---
ns: CAM
---
## SHAKE_CAM

```c
// 0x6A25241C340D3822 0x1D4211B0
void SHAKE_CAM(Cam cam, char* type, float amplitude);
```

Makes a cam shake.
[Shake Type List](https://github.com/DurtyFree/gta-v-data-dumps/blob/master/camShakeTypesCompact.json)

## Parameters
* **cam**: Cam ID, returned by [CREATE_CAM](#_0xC3981DCE61D9E13F)
* **type**: How the cam should shake
* **amplitude**: Strength of the cam shake

