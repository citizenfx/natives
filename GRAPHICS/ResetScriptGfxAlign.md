---
ns: GRAPHICS
aliases: ["0xE3A3DB414A373DAB", "_SCREEN_DRAW_POSITION_END"]
---
## RESET_SCRIPT_GFX_ALIGN

```c
// 0xE3A3DB414A373DAB 0x3FE33BD6
void RESET_SCRIPT_GFX_ALIGN();
```

This function resets the alignment set using `SET_SCRIPT_GFX_ALIGN` and `SET_SCRIPT_GFX_ALIGN_PARAMS` to the default
values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
any other scripts attempting to draw.
