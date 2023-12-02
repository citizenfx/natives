---
ns: CAM
aliases: ["0xC2EAE3FB8CDBED31"]
---
## ANIMATED_SHAKE_SCRIPT_GLOBAL

```c
// 0xC2EAE3FB8CDBED31 0xCB75BD9C
void ANIMATED_SHAKE_SCRIPT_GLOBAL(char* animDict, char* animName, char* p2, float amplitude);
```

Makes every script-created camera shake with a specific anim dictionary.

## Parameters
* **animDict**: Anim dictionary to shake the cameras with. Must be requested with (REQUEST_ANIM_DICT)(#_0xD3BD40951412FEF6) 
* **animName**: Animation name
* **p2**: Unknown. Only "" is used in scripts.
* **amplitude**: Strength of the shake
