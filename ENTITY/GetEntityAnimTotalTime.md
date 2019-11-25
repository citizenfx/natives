---
ns: ENTITY
---
## GET_ENTITY_ANIM_TOTAL_TIME

```c
// 0x50BD2730B191E360 0x433A9D18
float GET_ENTITY_ANIM_TOTAL_TIME(Entity entity, char* animDict, char* animName);
```

```
Returns a float value representing animation's total playtime in milliseconds.  
Example:  
GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")   
return 20800.000000  
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **entity**: 
* **animDict**: 
* **animName**: 

## Return value
