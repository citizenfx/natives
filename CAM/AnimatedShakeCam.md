---
ns: CAM
---
## ANIMATED_SHAKE_CAM

```c
// 0xA2746EEAE3E577CD 0xE1168767
void ANIMATED_SHAKE_CAM(Cam cam, char* shakeAnimDict, char* shakeAnimName, char* shakeName, float amplitude);
```

Initiate a camera animation to be played on the scripted camera.
You must request the animation dictionary with [REQUEST_ANIM_DICT](#_0xD3BD40951412FEF6) and wait for it to load with [HAS_ANIM_DICT_LOADED](#_0xD031A9162D01088C).

## Parameters
* **cam**: Cam ID returned by [`CREATE_CAM`](#_0xC3981DCE61D9E13F)
* **shakeAnimDict**: Animation dictionary to shake this camera with.
* **shakeAnimName**: Animation name from the dictionary to play on this camera.
* **shakeName**: Controls how shake ramps up/down at start/end. This parameter is optional, scripts mostly use ""
* **amplitude**: Strength of the shake

