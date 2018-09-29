---
ns: HUD
aliases: ["_DRAW_SUBTITLE_TIMED"]
---
## END_TEXT_COMMAND_PRINT

```c
// 0x9D77056A530643F6 0x38F82261
void END_TEXT_COMMAND_PRINT(int duration, BOOL drawImmediately);
```

```
Draws the subtitle at middle center of the screen.  
int duration = time in milliseconds to show text on screen before disappearing  
drawImmediately = If true, the text will be drawn immediately, if false, the text will be drawn after the previous subtitle has finished  
Used to be known as _DRAW_SUBTITLE_TIMED  
```

## Parameters
* **duration**: 
* **drawImmediately**: 

