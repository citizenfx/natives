---
ns: AUDIO
aliases: ["0xA8A7D434AFB4B97B"]
---
## BLOCK_SPEECH_CONTEXT_GROUP

```c
// 0xA8A7D434AFB4B97B
void BLOCK_SPEECH_CONTEXT_GROUP(char* groupName, int contextBlockTarget);
```

```c
enum eAudContextBlockTarget {
	AUD_CONTEXT_BLOCK_PLAYER = 0,
	AUD_CONTEXT_BLOCK_NPCS = 1,
	AUD_CONTEXT_BLOCK_BUDDYS = 2,
	AUD_CONTEXT_BLOCK_EVERYONE = 3,

	AUD_CONTEXT_BLOCK_TARGETS_TOTAL
}
```

Stop a certain group of peds from using a certain group of speech contexts.

Note that the block will be automatically removed when the calling script finishes


## Parameters
* **groupName**: the name of the context group to be blocked
* **contextBlockTarget**: the group of peds that should be used (refer to eAudContextBlockTarget)
