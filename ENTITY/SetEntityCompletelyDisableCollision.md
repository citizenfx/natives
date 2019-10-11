---
ns: ENTITY
aliases: ["0x9EBC85ED0FFFE51C","_SET_ENTITY_COLLISION_2"]
---
## SET_ENTITY_COMPLETELY_DISABLE_COLLISION

```c
// 0x9EBC85ED0FFFE51C 0xBD0D4831
void SET_ENTITY_COMPLETELY_DISABLE_COLLISION(Entity entity, BOOL p1, BOOL p2);
```

```
internally it calls the same function as 'SET_ENTITY_COLLISION'. but uses a hard coded parameter that only activates when p1 is set to true   
=============================  
Weirdly enough in the 3 scripts it's used in on PC,  
- director_mode (2 hits)  
- re_duel (2 hits)  
- re_seaplane (1 hit)  
Most of the time in the hits its actually used after the normal SET_ENTITY_COLLISION. Example from re_seaplane,  
Local_49[iParam0 /*6*/] = create_ped(26, iVar4, vVar0, fVar3, 1, true);  
set_entity_collision(Local_49[iParam0 /*6*/], iVar42, 0);  
_0x9EBC85ED0FFFE51C(Local_49[iParam0 /*6*/], !iVar66, 0); (_SET_ENTITY_COLLISION_2)  
iVar42 being true so the normal collision native is true, 0  
iVar66 being false so !false so it's true, 0  
Gonna ignore the 'vars' for the create_ped no point in defining them.  
```

## Parameters
* **entity**: 
* **p1**: 
* **p2**: 

