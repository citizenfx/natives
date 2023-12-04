---
ns: CAM
---
## ANIMATED_SHAKE_CAM

```c
// 0xA2746EEAE3E577CD 0xE1168767
void ANIMATED_SHAKE_CAM(Cam cam, char* shakeAnimDict, char* shakeAnimName, char* unknown, float amplitude);
```

Makes a camera shake with an animation.
You must request the animation dictionary with [REQUEST_ANIM_DICT](#_0xD3BD40951412FEF6) and wait for it to load with [HAS_ANIM_DICT_LOADED](#_0xD031A9162D01088C).

## Parameters
* **cam**: Cam ID returned by [`CREATE_CAM`](#_0xC3981DCE61D9E13F)
* **shakeAnimDict**: Animation dictionary to shake this camera with.
* **shakeAnimName**: Animation name from the dictionary to play on this camera.
* **unknown**: Scripts only use ""
* **amplitude**: Strength of the shake

