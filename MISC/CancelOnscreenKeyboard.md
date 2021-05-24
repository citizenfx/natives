---
ns: MISC
aliases: ["0x58A39BE597CE99CD"]
---
## _CANCEL_ONSCREEN_KEYBOARD

```c
// 0x58A39BE597CE99CD 0x196444BB
void _CANCEL_ONSCREEN_KEYBOARD();
```

```
DO NOT use this as it doesn't clean up the text input box properly and your script will get stuck in the UPDATE_ONSCREEN_KEYBOARD() loop.
Use _FORCE_CLOSE_TEXT_INPUT_BOX instead.
CANCEL_*
```
