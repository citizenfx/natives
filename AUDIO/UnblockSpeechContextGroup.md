---
ns: AUDIO
aliases: ["0x2ACABED337622DF2"]
---
## UNBLOCK_SPEECH_CONTEXT_GROUP

```c
// 0x2ACABED337622DF2
void UNBLOCK_SPEECH_CONTEXT_GROUP(char* groupName);
```

This removes all instances of a given context block.  Unfortunately, this means that if you have called this once blocking the player,
then later to block NPCs, and only want the player block removed, you'll have to once again call BLOCK_SPEECH... with NPCs as the target
after this is called.


## Parameters
* **groupName**: the name of the context group to unblock
