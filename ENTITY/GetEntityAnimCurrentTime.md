---
ns: ENTITY
---
## GET_ENTITY_ANIM_CURRENT_TIME

```c
// 0x346D81500D088F42 0x83943F41
float GET_ENTITY_ANIM_CURRENT_TIME(Entity entity, char* animDict, char* animName);
```

```
Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.  
Example:  
0.000000 - mark the starting of animation.  
0.500000 - mark the midpoint of the animation.  
1.000000 - mark the end of animation.  
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **entity**: 
* **animDict**: 
* **animName**: 

## Return value
