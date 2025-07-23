---
ns: CAM
aliases: ["0xC2EAE3FB8CDBED31"]
---
## ANIMATED_SHAKE_SCRIPT_GLOBAL

```c
// 0xC2EAE3FB8CDBED31 0xCB75BD9C
void ANIMATED_SHAKE_SCRIPT_GLOBAL(char* animDictionary, char* animClipName, char* shakeName, float amplitude);
```

```
Applies an animated shake globally to the rendered result of all active scripted cameras.
```

## Parameters
* **animDictionary**: The name of the animation dictionary containing the animation to be rendered as a shake.
* **animClipName**: The name of the animation to be rendered as a shake.
* **shakeName**: Controls how shake ramps up/down at start/end. This is optional
* **amplitude**: Can be used to increase or decrease the amplitude of the shake effect. Default value is 1.0

