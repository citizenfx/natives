---
ns: ENTITY
---
## PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM

```c
// 0xB9C54555ED30FBC4 0xEB4CBA74
BOOL PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM(float x, float y, float z, float radius, cs_type(Any) Hash objectModelHash, int sceneId, cs_type(AnyPtr) char* pAnimName, cs_type(AnyPtr) char* pAnimDictName, float fBlendDelta, float fBlendOutDelta, int flags, float fMoverBlendInDelta);
```

For some reason you must put every coordinate indivually in the arguments, adding a vector3() will give error.
Correct: ``PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM(coords.x, coords.y, coords.z, ...)``
Incorrect: ``PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM(coords, ...)``
[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **x**:
* **y**:
* **z**:
* **radius**:
* **objectModelHash**:
* **sceneId**:
* **pAnimName**: The name of the animation to play.
* **pAnimDictName**: The name of the animation dictionary to use.
* **fBlendDelta**: Blend in time.
* **fBlendOutDelta**: Blend out time.
* **flags**: The flags to use when playing the animation. See [`TASK_PLAY_ANIM`](#_0xEA47FE3719165B94).
* **fMoverBlendInDelta**:

## Return value
