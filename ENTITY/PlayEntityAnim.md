---
ns: ENTITY
---
## PLAY_ENTITY_ANIM

```c
// 0x7FB218262B810701 0x878753D5
BOOL PLAY_ENTITY_ANIM(Entity entity, char* animName, char* animDict, float p3, BOOL loop, BOOL stayInAnim, BOOL p6, float delta, Any bitset);
```

```
delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.  
The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.  
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **entity**: 
* **animName**: 
* **animDict**: 
* **p3**: 
* **loop**: 
* **stayInAnim**: 
* **p6**: 
* **delta**: 
* **bitset**: 

## Return value
