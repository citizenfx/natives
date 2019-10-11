---
ns: GRAPHICS
aliases: ["_START_SCREEN_EFFECT"]
---
## ANIMPOSTFX_PLAY

```c
// 0x2206BF9A37B7F724 0x1D980479
void ANIMPOSTFX_PLAY(char* effectName, int duration, BOOL looped);
```

```
playLength - is how long to play the effect for in milliseconds. If 0, it plays the default length  
if loop is true, the effect wont stop until you call _STOP_SCREEN_EFFECT on it. (only loopable effects)  
Example and list of screen FX: www.pastebin.com/dafBAjs0  
```

## Parameters
* **effectName**: 
* **duration**: 
* **looped**: 

