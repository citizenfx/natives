---
ns: ENTITY
---
## PLAY_ENTITY_ANIM

```c
// 0x7FB218262B810701 0x878753D5
BOOL PLAY_ENTITY_ANIM(Entity entity, char* animName, char* animDict, float fBlendDelta, BOOL bLoop, BOOL bHoldLastFrame, BOOL bDriveToPose, float fStartPhase, int iFlags);
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **entity**: The entity handle to play the animation on.
* **animName**: The name of the animation to play.
* **animDict**: The name of the animation dictionary to use.
* **fBlendDelta**: Blend in and out time.
* **bLoop**: Sets `AF_LOOPING` in the flags.
* **bHoldLastFrame**: Sets `AF_HOLD_LAST_FRAME` in the flags.
* **bDriveToPose**: unused
* **fStartPhase**: Clamped between `0.0` and `1.0`. Sets the start phase of the animation.
* **iFlags**: The flags to use when playing the animation. See [`TASK_PLAY_ANIM`](#_0xEA47FE3719165B94).

## Return value
