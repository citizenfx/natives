---
ns: MISC
---
## UPDATE_ONSCREEN_KEYBOARD

```c
// 0x0CF2B696BBF945AE 0x23D0A1CE
int UPDATE_ONSCREEN_KEYBOARD();
```

```
Returns the current status of the onscreen keyboard, and updates the output.
Status Codes:
-1: Keyboard isn't active
0: User still editing
1: User has finished editing
2: User has canceled editing
```

## Return value
