---
ns: CAM
aliases: ["0xC2EAE3FB8CDBED31"]
---
## ANIMATED_SHAKE_SCRIPT_GLOBAL

```c
// 0xC2EAE3FB8CDBED31 0xCB75BD9C
void ANIMATED_SHAKE_SCRIPT_GLOBAL(char* shakeAnimDict, char* shakeAnimName, char* shakeName, float amplitude);
```

Applies preset shake effect universally across the rendered output of all currently active scripted cameras.
You must request the animation dictionary with [REQUEST_ANIM_DICT](#_0xD3BD40951412FEF6) and wait for it to load with [HAS_ANIM_DICT_LOADED](#_0xD031A9162D01088C).

## Parameters
* **shakeAnimDict**: Animation dictionary of the shake.
* **shakeAnimName**: Animation name of the shake.
* **shakeName**: Controls how shake ramps up/down at start/end. This parameter is optional, scripts mostly use ""
* **amplitude**: Strength of the shake.

