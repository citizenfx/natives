---
ns: MISC
---
## UPDATE_ONSCREEN_KEYBOARD

```c
// 0x0CF2B696BBF945AE 0x23D0A1CE
int UPDATE_ONSCREEN_KEYBOARD();
```

Returns the current state of the text input box.

| Name | Value |
| ---- | ----- |
| Invalid | -1 |
| Editing | 0 |
| Confirmed | 1 |
| Canceled | 2 |
| Failed | 3 |

## Return value
Returns a value from the list above.
