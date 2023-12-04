---
ns: HUD
aliases: ["0x66E7CB63C97B7D20"]
---
## CODE_WANTS_SCRIPT_TO_TAKE_CONTROL

```c
// 0x66E7CB63C97B7D20 0x92DAFA78
cs_type(Any) BOOL CODE_WANTS_SCRIPT_TO_TAKE_CONTROL();
```


## Return value
Returns true if game code wants script to take control of a Pause Menu screen this frame.
Use [`GET_SCREEN_CODE_WANTS_SCRIPT_TO_CONTROL`](#_0x593FEAE1F73392D4) to get value of which screen should be controlled.
Currently, there is no possible way to tell when the player has switched out of this screen.