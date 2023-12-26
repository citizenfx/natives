---
ns: CAM
---
## SHAKE_CAM

```c
// 0x6A25241C340D3822 0x1D4211B0
void SHAKE_CAM(Cam cam, char* shakeType, float amplitude);
```

Shake Types:
SMALL_EXPLOSION_SHAKE
MEDIUM_EXPLOSION_SHAKE
LARGE_EXPLOSION_SHAKE
HAND_SHAKE
JOLT_SHAKE
VIBRATE_SHAKE
WOBBLY_SHAKE
DRUNK_SHAKE

## Parameters
* **cam**: Cam ID returned by [`CREATE_CAM`](#_0xC3981DCE61D9E13F)
* **shakeType**: How the camera should shake
* **amplitude**: Strength of this shake

