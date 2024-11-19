---
ns: ENTITY
---
## PLAY_SYNCHRONIZED_ENTITY_ANIM

```c
// 0xC77720A12FE14A86 0x012760AA
BOOL PLAY_SYNCHRONIZED_ENTITY_ANIM(Entity entity, int syncedScene, char* animName, char* animDictName, float fBlendInDelta, float fBlendOutDelta, int iFlags, float fMoverBlendInDelta);
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **entity**: The entity handle to play the animation on.
* **syncedScene**:
* **animName**: The name of the animation to play.
* **animDictName**: The name of the animation dictionary to use.
* **fBlendInDelta**: Blend in time.
* **fBlendOutDelta**: Blend out time.
* **iFlags**: The flags to use when playing the animation. See [`TASK_PLAY_ANIM`](#_0xEA47FE3719165B94).
* **fMoverBlendInDelta**:

## Return value
