---
ns: WATER
aliases: ["0xB1252E3E59A82AAF", "_REMOVE_CURRENT_RISE"]
---
## REMOVE_EXTRA_CALMING_QUAD

```c
// 0xB1252E3E59A82AAF 0x45268B6F
void REMOVE_EXTRA_CALMING_QUAD(int extraQuad);
```

Caution: This function is unsafe when used incorrectly.
Make sure your parameter is from 0-7 (inclusive). Using any other value will result in undefined behaviour (game crashes, etc).
ADD_EXTRA_CALMING_QUAD returns -1 when it fails, so make sure you're not trying to remove -1 as this could break something.

## Parameters
* **extraQuad**: The value returned from ADD_EXTRA_CALMING_QUAD (not including -1). Value must be in range [0,7] otherwise game bugs will occur.

