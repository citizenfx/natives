---
ns: GRAPHICS
aliases: ["0xD1C7CB175E012964"]
---
## PASS_KEYBOARD_INPUT_TO_SCALEFORM

```c
// 0xD1C7CB175E012964 0xE9183D3A
BOOL PASS_KEYBOARD_INPUT_TO_SCALEFORM(int scaleformHandle);
```

Passes keyboard input to scaleform. You must call this native every frame. Once an input occurs, this native will return true and call `SET_PC_KEY` scaleform movie method with the key that has been inputted.

The key parameter which is passed to the scaleform can also be: "BACKSPACE", "ENTER" or "\x1b" (Which is ESC).
This native is only used in `web_browser.c` as of game build 2944.

## Parameters
* **scaleformHandle**: Scaleform movie handle returned by [REQUEST_SCALEFORM_MOVIE](#_0x11FE353CF9733E6F)

## Return value
Bool indicating if an input occurred this frame and was passed to the scaleform.
