---
ns: PED
aliases: ["0x26695EC767728D84","_SET_PED_RAGDOLL_BLOCKING_FLAGS"]
---
## SET_RAGDOLL_BLOCKING_FLAGS

```c
// 0x26695EC767728D84 0x9C8F830D
void SET_RAGDOLL_BLOCKING_FLAGS(Ped ped, int flags);
```

```
Works for both player and peds, but some flags don't seem to work for the player (1, for example)  
1 - Blocks ragdolling when shot.  
2 - Blocks ragdolling when hit by a vehicle. The ped still might play a falling animation.  
4 - Blocks ragdolling when set on fire.  
-----------------------------------------------------------------------  
There seem to be 26 flags  
```

## Parameters
* **ped**: 
* **flags**: 

