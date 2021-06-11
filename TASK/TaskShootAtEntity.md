---
ns: TASK
---
## TASK_SHOOT_AT_ENTITY

```c
// 0x08DA95E8298AE772 0xAC0631C9
void TASK_SHOOT_AT_ENTITY(Entity entity, Entity target, int duration, Hash firingPattern);
```

```
//this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
Entity aimedentity;
Player player = PLAYER::PLAYER_ID();
PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);
//bg is an array of peds
TASK::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));
in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
Firing Pattern Hash Information: https://pastebin.com/Px036isB
```

## Parameters
* **entity**: 
* **target**: 
* **duration**: 
* **firingPattern**: 

