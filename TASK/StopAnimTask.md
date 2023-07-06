---
ns: TASK
---
## STOP_ANIM_TASK

```c
// 0x97FF36A1D40EA00A 0x2B520A57
void STOP_ANIM_TASK(Ped ped, char* animDictionary, char* animationName, float animExitSpeed);
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **ped**: 
* **animDictionary**: 
* **animationName**: 
* **animExitSpeed**: Greater than `0.0`, higher is faster. Setting to `0.0` or using an integer, will cause animation lockout - requiring the animation to be played again or the player be killed.

