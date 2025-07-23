---
ns: CAM
---
## ANIMATED_SHAKE_CAM

```c
// 0xA2746EEAE3E577CD 0xE1168767
void ANIMATED_SHAKE_CAM(Cam cam, char* animDictionary, char* animClipName, char* shakeName, float amplitude);
```

```
Example from michael2 script.  
CAM::ANIMATED_SHAKE_CAM(l_5069, "shake_cam_all@", "light", "", 1f);  
```

Sets a camera animation to play on scripted camera.

## Parameters
* **cam**: Cam handle to animate.
* **animDictionary**: The name of the animation dictionary containing the animation to be rendered as a shake.
* **animClipName**: The name of the animation to be rendered as a shake.
* **shakeName**: Controls how shake ramps up/down at start/end. This is optional
* **amplitude**: Can be used to increase or decrease the amplitude of the shake effect. Default value is 1.0

