---
ns: ENTITY
aliases: ["0x3910051CCECDB00C", "_SET_ENTITY_REGISTER", "_SET_ENTITY_SOMETHING", "_SET_ENTITY_CLEANUP_BY_ENGINE"]
---
## SET_ENTITY_SHOULD_FREEZE_WAITING_ON_COLLISION

```c
// 0x3910051CCECDB00C 0xD3850671
void SET_ENTITY_SHOULD_FREEZE_WAITING_ON_COLLISION(Entity entity, BOOL toggle);
```

```
True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
```

## Parameters
* **entity**: 
* **toggle**: 

