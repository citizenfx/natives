---
ns: MISC
---
## UPDATE_ONSCREEN_KEYBOARD

```c
// 0x0CF2B696BBF945AE 0x23D0A1CE
int UPDATE_ONSCREEN_KEYBOARD();
```

Returns the current state of the text input box.

```c
enum eOSKStatus
{
  OSK_INVALID = -1,
  OSK_PENDING = 0,
  OSK_SUCCESS = 1,
  OSK_CANCELLED = 2,
  OSK_FAILED = 3
};
```

## Return value
Returns a value from the list above.
