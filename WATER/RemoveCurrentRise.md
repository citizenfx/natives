---
ns: WATER
aliases: ["0xB1252E3E59A82AAF"]
---
## _REMOVE_CURRENT_RISE

```c
// 0xB1252E3E59A82AAF 0x45268B6F
void _REMOVE_CURRENT_RISE(int riseIndex);
```

Caution: This function is unsafe when used incorrectly.
Make sure your parameter is from 0-7 (inclusive). Using any other value will result in undefined behaviour (game crashes, etc).
_ADD_CURRENT_RISE returns -1 when it fails, so make sure you're not trying to remove -1 as this could break something.

## Parameters
* **riseIndex**: The value returned from 0xFDBF4CDBC07E1706 (not including -1). Value must be in range [0,7] otherwise game bugs will occur.

