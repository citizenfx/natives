---
ns: ENTITY
---
## IS_ENTITY_PLAYING_ANIM

```c
// 0x1F0B79228E461EC9 0x0D130D34
BOOL IS_ENTITY_PLAYING_ANIM(Entity entity, char* animDict, char* animName, int taskFlag);
```

See also [`IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM`](#_0x6EC47A344923E1ED)

```
Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)  
p4 is always 3 in the scripts.  
taskFlag:  
2 - Check synchronized scene  
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **entity**: 
* **animDict**: 
* **animName**: 
* **taskFlag**: 

## Return value
