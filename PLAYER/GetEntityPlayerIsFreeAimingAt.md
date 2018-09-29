---
ns: PLAYER
---
## GET_ENTITY_PLAYER_IS_FREE_AIMING_AT

```c
// 0x2975C866E6713290 0x8866D9D0
BOOL GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(Player player, Entity* entity);
```

```
Returns TRUE if it found an entity in your crosshair within range of your weapon. Assigns the handle of the target to the *entity that you pass it.  
Returns false if no entity found.  
```

## Parameters
* **player**: 
* **entity**: 

## Return value
