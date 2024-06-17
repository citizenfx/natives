---
ns: MISC
aliases: ["0x58A39BE597CE99CD", "_CANCEL_ONSCREEN_KEYBOARD"]
---
## CANCEL_ONSCREEN_KEYBOARD

```c
// 0x58A39BE597CE99CD 0x196444BB
void CANCEL_ONSCREEN_KEYBOARD();
```

Closes the onscreen keyboard on console versions of the game.

**NOTE:** Do not use this native in FiveM/PC, because [`UPDATE_ONSCREEN_KEYBOARD`](#_0x0CF2B696BBF945AE) value doesn't get cleaned up and stays as `0`.
You should use [`FORCE_CLOSE_TEXT_INPUT_BOX`](#_0x8817605C2BA76200) instead.
