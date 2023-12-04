---
ns: CAM
aliases: ["0xC2EAE3FB8CDBED31"]
---
## ANIMATED_SHAKE_SCRIPT_GLOBAL

```c
// 0xC2EAE3FB8CDBED31 0xCB75BD9C
void ANIMATED_SHAKE_SCRIPT_GLOBAL(char* shakeAnimDict, char* shakeAnimName, char* unknown, float amplitude);
```

Makes script created cameras shake with an animation.
You must request the animation dictionary with [REQUEST_ANIM_DICT](#_0xD3BD40951412FEF6) and wait for it to load with [HAS_ANIM_DICT_LOADED](#_0xD031A9162D01088C).

## Parameters
* **shakeAnimDict**: Animation dictionary of the shake.
* **shakeAnimName**: Animation name of the shake.
* **unknown**: Scripts only use ""
* **amplitude**: Strength of the shake.

